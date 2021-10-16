<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Staff extends Migration
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
            'employee_number' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'name' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'original_address' => [
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
            'id_card_number' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'gender' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'education' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'position' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'salary' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'photo' => [
                'type' => 'TEXT'
            ],
            'joined_at' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'marital_status' => [
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
        $this->forge->createTable('staff');
    }

    public function down()
    {
        //
    }
}
