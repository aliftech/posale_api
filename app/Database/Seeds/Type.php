<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use \CodeIgniter\I18n\Time;

class Type extends Seeder
{
    public function run()
    {
        //

        for ($i= 0; $i<1; $i++) {
            $data = [
                [
                    'type' => 'Raw Material',
                    'created_by' => 'Superadmin',
                    'create_at'  => Time::now()->setTimezone('Asia/Jakarta')
                ],
                [
                    'type' => 'Finished Goods',
                    'created_by' => 'Superadmin',
                    'create_at'  => Time::now()->setTimezone('Asia/Jakarta')
                ]
            ];
                // insert semua data ke tabel
                $this->db->table('types')->insertBatch($data);
        }

        
    }
}
