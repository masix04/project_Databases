ALTER TABLE srch_result_occur_details DROP PRIMARY KEY

ALTER TABLE srch_result_occur_details ADD PRIMARY KEY (`ayat_id`)

--  Remove Foreign key
ALTER TABLE srch_word_details DROP FOREIGN KEY `fk_searched_key_for_s_words`

--  Remove column 
ALTER TABLE srch_word_details DROP COLUMN `searched_id`

-- Remove Primary key from Word-Table
ALTER TABLE srch_word_details DROP PRIMARY KEY

-- Altered Before Remove PK
ALTER TABLE `srch_word_details` CHANGE `id` `id` INT(20) 