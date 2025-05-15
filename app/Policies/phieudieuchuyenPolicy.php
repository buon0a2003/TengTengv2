<?php

namespace App\Policies;

use App\Models\User;
use App\Models\phieudieuchuyen;
use Illuminate\Auth\Access\HandlesAuthorization;

class phieudieuchuyenPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any models.
     */
    public function viewAny(User $user): bool
    {
        return $user->can('view_any_phieu::dieu::chuyen');
    }

    /**
     * Determine whether the user can view the model.
     */
    public function view(User $user, phieudieuchuyen $phieudieuchuyen): bool
    {
        return $user->can('view_phieu::dieu::chuyen');
    }

    /**
     * Determine whether the user can create models.
     */
    public function create(User $user): bool
    {
        return $user->can('create_phieu::dieu::chuyen');
    }

    /**
     * Determine whether the user can update the model.
     */
    public function update(User $user, phieudieuchuyen $phieudieuchuyen): bool
    {
        return $user->can('update_phieu::dieu::chuyen');
    }

    /**
     * Determine whether the user can delete the model.
     */
    public function delete(User $user, phieudieuchuyen $phieudieuchuyen): bool
    {
        return $user->can('delete_phieu::dieu::chuyen');
    }

    /**
     * Determine whether the user can bulk delete.
     */
    public function deleteAny(User $user): bool
    {
        return $user->can('delete_any_phieu::dieu::chuyen');
    }

    /**
     * Determine whether the user can permanently delete.
     */
    public function forceDelete(User $user, phieudieuchuyen $phieudieuchuyen): bool
    {
        return $user->can('{{ ForceDelete }}');
    }

    /**
     * Determine whether the user can permanently bulk delete.
     */
    public function forceDeleteAny(User $user): bool
    {
        return $user->can('{{ ForceDeleteAny }}');
    }

    /**
     * Determine whether the user can restore.
     */
    public function restore(User $user, phieudieuchuyen $phieudieuchuyen): bool
    {
        return $user->can('{{ Restore }}');
    }

    /**
     * Determine whether the user can bulk restore.
     */
    public function restoreAny(User $user): bool
    {
        return $user->can('{{ RestoreAny }}');
    }

    /**
     * Determine whether the user can replicate.
     */
    public function replicate(User $user, phieudieuchuyen $phieudieuchuyen): bool
    {
        return $user->can('{{ Replicate }}');
    }

    /**
     * Determine whether the user can reorder.
     */
    public function reorder(User $user): bool
    {
        return $user->can('{{ Reorder }}');
    }
}
