CREATE TABLE IF NOT EXISTS metrics_recipes (
    exercise_type VARCHAR(50) PRIMARY KEY,
    schema JSONB NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO metrics_recipes (exercise_type, schema) VALUES ('BALANCE_EXERCISE', '{
  "squat_count": { "type": "integer", "required": true, "min": 0 },
  "obstacles_spawned": { "type": "integer", "required": true, "min": 0 },
  "obstacle_collision_count": { "type": "integer", "required": true, "min": 0 }
}') ON CONFLICT (exercise_type) DO NOTHING;
