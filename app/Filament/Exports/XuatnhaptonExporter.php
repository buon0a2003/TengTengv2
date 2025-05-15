<?php

declare(strict_types=1);

namespace App\Filament\Exports;

use PhpOffice\PhpSpreadsheet\Exception;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Cell\Coordinate;
use Symfony\Component\HttpFoundation\BinaryFileResponse;

class XuatnhaptonExporter
{
    protected array $data;

    protected int $month;

    protected int $year;

    public function __construct(array $data, int $month, int $year)
    {
        $this->data = $data;
        $this->month = $month;
        $this->year = $year;
    }

    /**
     * @throws Exception
     * @throws \PhpOffice\PhpSpreadsheet\Writer\Exception
     */
    public function download(): BinaryFileResponse
    {
        $templatePath = public_path('template/TongHopNhapXuatTon.xls');

        if (! file_exists($templatePath)) {
            abort(404, 'Không tìm thấy file mẫu.');
        }

        $spreadsheet = IOFactory::load($templatePath);
        $sheet = $spreadsheet->getActiveSheet();


        $startDate = now()->setDate($this->year, $this->month, 1)->format('d/m/Y');
        $endDate = now()->setDate($this->year, $this->month, 1)->endOfMonth()->format('d/m/Y');
        $sheet->setCellValue('A4', "Từ ngày {$startDate} đến ngày {$endDate}");

        $grouped = collect($this->data)->groupBy('LaTP');
        $currentRow = 8;

        $totalAll = ['opening' => 0, 'import' => 0, 'export' => 0, 'closing' => 0];

        foreach (['TP' => true, 'VT' => false] as $label => $type) {
            $items = $grouped->get($type, []);
            if (! $items || count($items) === 0) {
                continue;
            }

            // Tính tổng nhóm
            $groupTotal = ['opening' => 0, 'import' => 0, 'export' => 0, 'closing' => 0];
            foreach ($items as $item) {
                foreach (['opening', 'import', 'export', 'closing'] as $key) {
                    $groupTotal[$key] += $item[$key] ?? 0;
                }
            }

            // Dòng tiêu đề nhóm
            $sheet->setCellValue("A{$currentRow}", $label);
            $sheet->setCellValue("B{$currentRow}", $type ? 'Nhóm thành phẩm' : 'Nhóm nguyên vật liệu');
            $sheet->mergeCells("B{$currentRow}:C{$currentRow}");
            $sheet->setCellValue("D{$currentRow}", $groupTotal['opening']);
            $sheet->setCellValue("E{$currentRow}", $groupTotal['import']);
            $sheet->setCellValue("F{$currentRow}", $groupTotal['export']);
            $sheet->setCellValue("G{$currentRow}", $groupTotal['closing']);

            foreach (['D', 'E', 'F', 'G'] as $col) {
                $sheet->getStyle("{$col}{$currentRow}")
                    ->getNumberFormat()
                    ->setFormatCode('#,##0');
            }

            $sheet->getStyle("A{$currentRow}:G{$currentRow}")->applyFromArray([
                'font' => ['bold' => true],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],

            ]);

            $currentRow++;

            foreach ($items as $item) {
                $sheet->fromArray([
                    $item['MaVT'],
                    $item['TenVT'],
                    $item['DonViTinh'] ?? '',
                    $item['opening'] ?? 0,
                    $item['import'] ?? 0,
                    $item['export'] ?? 0,
                    $item['closing'] ?? 0,
                ], null, "A{$currentRow}");

                // Kẻ viền
                $sheet->getStyle("A{$currentRow}:G{$currentRow}")->applyFromArray([
                    'font' => ['bold' => false],
                    'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
                ]);

                $sheet->getStyle("A{$currentRow}")->getAlignment()->setHorizontal(Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle("B{$currentRow}")->getAlignment()->setHorizontal(Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle("C{$currentRow}")->getAlignment()->setHorizontal(Alignment::HORIZONTAL_LEFT);
                foreach (['D', 'E', 'F', 'G'] as $col) {
                    $sheet->getStyle("{$col}{$currentRow}")->getAlignment()->setHorizontal(Alignment::HORIZONTAL_RIGHT);
                }

                $currentRow++;
            }

            // Cộng dồn tổng toàn bộ
            foreach (['opening', 'import', 'export', 'closing'] as $key) {
                $totalAll[$key] += $groupTotal[$key];
            }
        }

        // Dòng tổng cộng toàn bộ
        $sheet->setCellValue("B{$currentRow}", 'Tổng cộng');
        $sheet->mergeCells("B{$currentRow}:C{$currentRow}");

        // Dòng tổng cộng cuối cùng
        $sheet->setCellValue("A{$currentRow}", 'Tổng cộng');
        $sheet->mergeCells("A{$currentRow}:C{$currentRow}");

        $sheet->setCellValue("D{$currentRow}", $totalAll['opening']);
        $sheet->setCellValue("E{$currentRow}", $totalAll['import']);
        $sheet->setCellValue("F{$currentRow}", $totalAll['export']);
        $sheet->setCellValue("G{$currentRow}", $totalAll['closing']);

        $sheet->getStyle("A{$currentRow}:G{$currentRow}")->applyFromArray([
            'font' => ['bold' => true],
            'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);

        // Căn chỉnh dòng tổng cộng
        $sheet->getStyle("B{$currentRow}")->getAlignment()->setHorizontal(Alignment::HORIZONTAL_LEFT);
        foreach (['D', 'E', 'F', 'G'] as $col) {
            $sheet->getStyle("{$col}{$currentRow}")->getAlignment()->setHorizontal(Alignment::HORIZONTAL_RIGHT);
        }

        $highestRow = $sheet->getHighestRow();
        $cols = ['D', 'E', 'F', 'G'];

        foreach ($cols as $col) {
            for ($row = 9; $row <= $highestRow; $row++) {
                $cell = $sheet->getCell("{$col}{$row}");
                $value = $cell->getValue();
                if ($value === null || $value === '') {
                    $cell->setValue(0);
                }
            }
        }

        $fileName = 'thongkeXuatNhapTon_Thang'.$this->month.'_'.$this->year.'.xlsx';
        $savePath = storage_path("app/tmp/{$fileName}");
        if (! is_dir(dirname($savePath))) {
            mkdir(dirname($savePath), 0755, true);
        }

        $writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
        $writer->save($savePath);

        return response()->download($savePath, $fileName)->deleteFileAfterSend(true);
    }
}
