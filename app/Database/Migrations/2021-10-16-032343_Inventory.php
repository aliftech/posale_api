<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Inventory extends Migration
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
            'product' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'category' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'suplyer' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'stock' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'buy_price' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'sell_price' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'profit' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'status' => [
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
        $this->forge->createTable('inventories');
    }

    public function down()
    {
        //
    }
}
