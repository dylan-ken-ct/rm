CREATE TABLE IF NOT EXISTS agent_assessment_answers (
    id BIGSERIAL PRIMARY KEY,
    respondent_name VARCHAR(100),
    respondent_surname VARCHAR(100),
    island_team VARCHAR(100),
    assessment_date DATE,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    submission_source VARCHAR(50) DEFAULT 'web',

    s1q1 VARCHAR(20),
    s1q2 VARCHAR(20),
    s1q3 VARCHAR(20),
    s1q4 VARCHAR(20),
    s1q5 VARCHAR(20),

    p1 VARCHAR(20),
    p2 VARCHAR(20),
    p3 VARCHAR(20),
    p4 VARCHAR(20),
    p5 VARCHAR(20),
    p6 VARCHAR(20),

    sa1 SMALLINT,
    sa2 SMALLINT,
    sa3 SMALLINT,
    sa4 SMALLINT,
    sa5 SMALLINT,
    sa6 SMALLINT,

    cs1 SMALLINT,
    cs2 SMALLINT,
    cs3 SMALLINT,

    pk1 SMALLINT,
    pk2 SMALLINT,
    pk3 SMALLINT,
    pk4 SMALLINT,
    pk5 SMALLINT,
    pk6 SMALLINT,
    pk7 SMALLINT,
    pk8 SMALLINT,
    pk9 SMALLINT,

    co1 VARCHAR(20),
    co2 VARCHAR(20),
    co3 VARCHAR(20),
    co4 VARCHAR(20),
    co5 VARCHAR(20),
    co6 VARCHAR(20),
    co7 VARCHAR(20),
    co8 VARCHAR(20),

    notes TEXT
);

CREATE INDEX IF NOT EXISTS idx_agent_assessment_answers_created_at
    ON agent_assessment_answers (created_at);

ALTER TABLE agent_assessment_answers ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow anon insert" ON agent_assessment_answers
    FOR INSERT TO anon
    WITH CHECK (true);
