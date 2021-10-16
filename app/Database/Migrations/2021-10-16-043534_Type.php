<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Type extends Migration
{
    public function up()
    {
        // TYPE == RAW MATERIAL, FINISHED GOODS, DLL

        $this->forge->addField([
            'id' => [
                'type' => 'INT',
                'constraint' => 11,
                'auto_increment' => true
            ],
            'type' => [
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
        $this->forge->createTable('types');
    }

    public function down()
    {
        //
    }
}
