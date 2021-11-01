<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class RoleMenu extends Migration
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
            'role' => [
                'type' => 'VARCHAR',
                'constraint' => 250
            ],
            'menu_id' => [
                'type' => 'VARCHAR',
                'constraint' => 250
            ],
            'status' => [
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
        $this->forge->createTable('role_menus');
    }

    public function down()
    {
        //
    }
}
