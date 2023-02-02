--------------------------------------------------------------------------------
- check_ASM_space.sql
/*
Check ASM space usage
*/
--------------------------------------------------------------------------------

set linesize 140
SELECT
    group_number,
    name,
    offline_disks,
    state,
    type,
    total_mb,
    free_mb,
    usable_file_mb,
    round(
        CASE type
            WHEN 'HIGH'     THEN
                3
            WHEN 'NORMAL'   THEN
                2
            WHEN 'EXTERNAL' THEN
                1
        END
        * usable_file_mb / total_mb * 100, 2) pct_free
FROM
    v$asm_diskgroup;
