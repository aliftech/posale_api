<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Position extends Migration
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
            'position' => [
                'type' => 'VARCHAR',
                'constraint' => 100
            ],
            'created_by' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'created_at' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ]
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('positions');
    }

    public function down()
    {
        //
    }
}
