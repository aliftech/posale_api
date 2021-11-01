<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Icon extends Migration
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
            'icon' => [
                'type' => 'VARCHAR',
                'constraint' => 250
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
        $this->forge->createTable('icons');
    }

    public function down()
    {
        //
    }
}
