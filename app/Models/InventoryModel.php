<?php

namespace App\Models;

use CodeIgniter\Model;

class InventoryModel extends Model
{
    protected $DBGroup              = 'default';
    protected $table                = 'inventories';
    protected $primaryKey           = 'id';
    protected $useAutoIncrement     = true;
    protected $insertID             = 0;
    protected $returnType           = 'array';
    protected $useSoftDeletes       = false;
    protected $protectFields        = true;
    protected $allowedFields        = [
        'id',
        'code',
        'name',
        'image',
        'image_path',
        'product',
        'brand',
        'category',
        'type',
        'description',
        'suplyer',
        'stock',
        'min_stock',
        'buy_price',
        'sell_price',
        'profit',
        'status',
        'created_by',
        'created_at'
    ];

    // Dates
    protected $useTimestamps        = false;
    protected $dateFormat           = 'datetime';
    protected $createdField         = 'created_at';
    protected $updatedField         = 'updated_at';
    protected $deletedField         = 'deleted_at';

    // Validation
    protected $validationRules      = [];
    protected $validationMessages   = [];
    protected $skipValidation       = false;
    protected $cleanValidationRules = true;

    // Callbacks
    protected $allowCallbacks       = true;
    protected $beforeInsert         = [];
    protected $afterInsert          = [];
    protected $beforeUpdate         = [];
    protected $afterUpdate          = [];
    protected $beforeFind           = [];
    protected $afterFind            = [];
    protected $beforeDelete         = [];
    protected $afterDelete          = [];
}
