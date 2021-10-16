<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Sales extends Migration
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
            'product' => [
                'type' => 'VARCHAR',
                'constraint' => 100
            ],
            'category' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'amount' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'price' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'suplyer' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'date_and_time' => [
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
        $this->forge->createTable('sales');
    }

    public function down()
    {
        //
    }
}
