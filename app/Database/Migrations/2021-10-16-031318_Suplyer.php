<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Suplyer extends Migration
{
    public function up()
    {
        //

        $this->forge->addField([
            'id' => [
                'type' => 'INT',
                'constraint' => 11,
                'auto_increment' => true
            ],
            'code' => [
                'type' => 'VARCHAR',
                'constraint' => 100
            ],
            'suplyer_name' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'address' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'phone' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'created_by' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'created_at' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('suplyers');
    }

    public function down()
    {
        //
    }
}
