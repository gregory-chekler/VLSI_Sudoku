/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Apr 25 16:43:27 2024
/////////////////////////////////////////////////////////////


module top_module ( in_clka, in_clkb, in_restart, in_new_game, in_enter, 
        in_diff_cell_val, out_solved, out_state, in_rand_setup, in_rand_A, 
        in_rand_B, out_gen_rand_flag, out_set_board_flag, out_set_diff_flag, 
        out_row_flag, out_col_flag, out_val_flag, out_check_flag, 
        out_fill_flag, out_user_board_0, out_user_board_1, out_user_board_2, 
        out_user_board_3, out_user_board_4, out_user_board_5, out_user_board_6, 
        out_user_board_7, out_user_board_8, out_user_board_9, 
        out_user_board_10, out_user_board_11, out_user_board_12, 
        out_user_board_13, out_user_board_14, out_user_board_15, 
        out_real_board_0, out_real_board_1, out_real_board_2, out_real_board_3, 
        out_real_board_4, out_real_board_5, out_real_board_6, out_real_board_7, 
        out_real_board_8, out_real_board_9, out_real_board_10, 
        out_real_board_11, out_real_board_12, out_real_board_13, 
        out_real_board_14, out_real_board_15 );
  input [1:0] in_diff_cell_val;
  output [3:0] out_state;
  output [3:0] in_rand_setup;
  output [3:0] in_rand_A;
  output [3:0] in_rand_B;
  output [15:0] out_fill_flag;
  output [2:0] out_user_board_0;
  output [2:0] out_user_board_1;
  output [2:0] out_user_board_2;
  output [2:0] out_user_board_3;
  output [2:0] out_user_board_4;
  output [2:0] out_user_board_5;
  output [2:0] out_user_board_6;
  output [2:0] out_user_board_7;
  output [2:0] out_user_board_8;
  output [2:0] out_user_board_9;
  output [2:0] out_user_board_10;
  output [2:0] out_user_board_11;
  output [2:0] out_user_board_12;
  output [2:0] out_user_board_13;
  output [2:0] out_user_board_14;
  output [2:0] out_user_board_15;
  output [2:0] out_real_board_0;
  output [2:0] out_real_board_1;
  output [2:0] out_real_board_2;
  output [2:0] out_real_board_3;
  output [2:0] out_real_board_4;
  output [2:0] out_real_board_5;
  output [2:0] out_real_board_6;
  output [2:0] out_real_board_7;
  output [2:0] out_real_board_8;
  output [2:0] out_real_board_9;
  output [2:0] out_real_board_10;
  output [2:0] out_real_board_11;
  output [2:0] out_real_board_12;
  output [2:0] out_real_board_13;
  output [2:0] out_real_board_14;
  output [2:0] out_real_board_15;
  input in_clka, in_clkb, in_restart, in_new_game, in_enter;
  output out_solved, out_gen_rand_flag, out_set_board_flag, out_set_diff_flag,
         out_row_flag, out_col_flag, out_val_flag, out_check_flag;
  wire   \Sudoku_FSM/n49 , \Sudoku_FSM/n48 , \Sudoku_FSM/n47 ,
         \Sudoku_FSM/n46 , \Sudoku_FSM/n45 , \Sudoku_FSM/n44 ,
         \Sudoku_FSM/n43 , \Sudoku_FSM/n42 , \Sudoku_FSM/n41 ,
         \Sudoku_FSM/n40 , \Sudoku_FSM/n39 , \Sudoku_FSM/n38 ,
         \Sudoku_FSM/n37 , \Sudoku_FSM/n36 , \Sudoku_FSM/n35 ,
         \Sudoku_FSM/n34 , \Sudoku_FSM/n33 , \Sudoku_FSM/n32 ,
         \Sudoku_FSM/n31 , \Sudoku_FSM/n30 , \Sudoku_FSM/n29 ,
         \Sudoku_FSM/n28 , \Sudoku_FSM/n27 , \Sudoku_FSM/n26 ,
         \Sudoku_FSM/n25 , \Sudoku_FSM/n24 , \Sudoku_FSM/n23 ,
         \Sudoku_FSM/n22 , \Sudoku_FSM/n21 , \Sudoku_FSM/n20 ,
         \Sudoku_FSM/n19 , \Sudoku_FSM/n18 , \Sudoku_FSM/n17 ,
         \Sudoku_FSM/n16 , \Sudoku_FSM/n15 , \Sudoku_FSM/n14 ,
         \Sudoku_FSM/n13 , \Sudoku_FSM/n12 , \Sudoku_FSM/n10 , \Sudoku_FSM/n9 ,
         \Sudoku_FSM/n8 , \Sudoku_FSM/n7 , \Sudoku_FSM/n6 , \Sudoku_FSM/n5 ,
         \Sudoku_FSM/n4 , \Sudoku_FSM/n3 , \Sudoku_FSM/n2 , \Sudoku_FSM/n1 ,
         \Sudoku_FSM/N157 , \Sudoku_FSM/N156 , \Sudoku_FSM/N155 ,
         \Sudoku_FSM/N154 , \Sudoku_FSM/N153 , \Sudoku_FSM/N152 ,
         \Sudoku_FSM/N151 , \Sudoku_FSM/N96 , \Sudoku_FSM/N94 ,
         \Sudoku_FSM/N93 , \Sudoku_DP/n664 , \Sudoku_DP/n663 ,
         \Sudoku_DP/n662 , \Sudoku_DP/n661 , \Sudoku_DP/n660 ,
         \Sudoku_DP/n659 , \Sudoku_DP/n658 , \Sudoku_DP/n657 ,
         \Sudoku_DP/n656 , \Sudoku_DP/n655 , \Sudoku_DP/n654 ,
         \Sudoku_DP/n653 , \Sudoku_DP/n652 , \Sudoku_DP/n651 ,
         \Sudoku_DP/n650 , \Sudoku_DP/n649 , \Sudoku_DP/n648 ,
         \Sudoku_DP/n647 , \Sudoku_DP/n646 , \Sudoku_DP/n645 ,
         \Sudoku_DP/n644 , \Sudoku_DP/n643 , \Sudoku_DP/n642 ,
         \Sudoku_DP/n641 , \Sudoku_DP/n640 , \Sudoku_DP/n639 ,
         \Sudoku_DP/n638 , \Sudoku_DP/n637 , \Sudoku_DP/n636 ,
         \Sudoku_DP/n635 , \Sudoku_DP/n634 , \Sudoku_DP/n633 ,
         \Sudoku_DP/n632 , \Sudoku_DP/n631 , \Sudoku_DP/n630 ,
         \Sudoku_DP/n629 , \Sudoku_DP/n628 , \Sudoku_DP/n627 ,
         \Sudoku_DP/n626 , \Sudoku_DP/n625 , \Sudoku_DP/n624 ,
         \Sudoku_DP/n623 , \Sudoku_DP/n622 , \Sudoku_DP/n621 ,
         \Sudoku_DP/n620 , \Sudoku_DP/n619 , \Sudoku_DP/n618 ,
         \Sudoku_DP/n617 , \Sudoku_DP/n616 , \Sudoku_DP/n615 ,
         \Sudoku_DP/n614 , \Sudoku_DP/n613 , \Sudoku_DP/n612 ,
         \Sudoku_DP/n611 , \Sudoku_DP/n610 , \Sudoku_DP/n609 ,
         \Sudoku_DP/n608 , \Sudoku_DP/n607 , \Sudoku_DP/n606 ,
         \Sudoku_DP/n605 , \Sudoku_DP/n604 , \Sudoku_DP/n603 ,
         \Sudoku_DP/n602 , \Sudoku_DP/n601 , \Sudoku_DP/n600 ,
         \Sudoku_DP/n599 , \Sudoku_DP/n598 , \Sudoku_DP/n597 ,
         \Sudoku_DP/n596 , \Sudoku_DP/n595 , \Sudoku_DP/n594 ,
         \Sudoku_DP/n593 , \Sudoku_DP/n592 , \Sudoku_DP/n591 ,
         \Sudoku_DP/n590 , \Sudoku_DP/n589 , \Sudoku_DP/n588 ,
         \Sudoku_DP/n587 , \Sudoku_DP/n586 , \Sudoku_DP/n585 ,
         \Sudoku_DP/n584 , \Sudoku_DP/n583 , \Sudoku_DP/n582 ,
         \Sudoku_DP/n581 , \Sudoku_DP/n580 , \Sudoku_DP/n579 ,
         \Sudoku_DP/n578 , \Sudoku_DP/n577 , \Sudoku_DP/n576 ,
         \Sudoku_DP/n575 , \Sudoku_DP/n574 , \Sudoku_DP/n573 ,
         \Sudoku_DP/n572 , \Sudoku_DP/n571 , \Sudoku_DP/n570 ,
         \Sudoku_DP/n569 , \Sudoku_DP/n568 , \Sudoku_DP/n567 ,
         \Sudoku_DP/n566 , \Sudoku_DP/n565 , \Sudoku_DP/n564 ,
         \Sudoku_DP/n563 , \Sudoku_DP/n562 , \Sudoku_DP/n561 ,
         \Sudoku_DP/n560 , \Sudoku_DP/n559 , \Sudoku_DP/n558 ,
         \Sudoku_DP/n557 , \Sudoku_DP/n556 , \Sudoku_DP/n555 ,
         \Sudoku_DP/n554 , \Sudoku_DP/n553 , \Sudoku_DP/n552 ,
         \Sudoku_DP/n551 , \Sudoku_DP/n550 , \Sudoku_DP/n549 ,
         \Sudoku_DP/n548 , \Sudoku_DP/n547 , \Sudoku_DP/n546 ,
         \Sudoku_DP/n545 , \Sudoku_DP/n544 , \Sudoku_DP/n543 ,
         \Sudoku_DP/n542 , \Sudoku_DP/n541 , \Sudoku_DP/n540 ,
         \Sudoku_DP/n539 , \Sudoku_DP/n538 , \Sudoku_DP/n537 ,
         \Sudoku_DP/n536 , \Sudoku_DP/n535 , \Sudoku_DP/n534 ,
         \Sudoku_DP/n533 , \Sudoku_DP/n532 , \Sudoku_DP/n531 ,
         \Sudoku_DP/n530 , \Sudoku_DP/n529 , \Sudoku_DP/n528 ,
         \Sudoku_DP/n527 , \Sudoku_DP/n526 , \Sudoku_DP/n525 ,
         \Sudoku_DP/n524 , \Sudoku_DP/n523 , \Sudoku_DP/n522 ,
         \Sudoku_DP/n521 , \Sudoku_DP/n520 , \Sudoku_DP/n519 ,
         \Sudoku_DP/n518 , \Sudoku_DP/n517 , \Sudoku_DP/n516 ,
         \Sudoku_DP/n515 , \Sudoku_DP/n514 , \Sudoku_DP/n513 ,
         \Sudoku_DP/n512 , \Sudoku_DP/n511 , \Sudoku_DP/n510 ,
         \Sudoku_DP/n509 , \Sudoku_DP/n508 , \Sudoku_DP/n507 ,
         \Sudoku_DP/n506 , \Sudoku_DP/n505 , \Sudoku_DP/n504 ,
         \Sudoku_DP/n503 , \Sudoku_DP/n502 , \Sudoku_DP/n501 ,
         \Sudoku_DP/n500 , \Sudoku_DP/n499 , \Sudoku_DP/n498 ,
         \Sudoku_DP/n497 , \Sudoku_DP/n496 , \Sudoku_DP/n495 ,
         \Sudoku_DP/n494 , \Sudoku_DP/n493 , \Sudoku_DP/n492 ,
         \Sudoku_DP/n491 , \Sudoku_DP/n490 , \Sudoku_DP/n489 ,
         \Sudoku_DP/n488 , \Sudoku_DP/n487 , \Sudoku_DP/n486 ,
         \Sudoku_DP/n485 , \Sudoku_DP/n484 , \Sudoku_DP/n483 ,
         \Sudoku_DP/n482 , \Sudoku_DP/n481 , \Sudoku_DP/n480 ,
         \Sudoku_DP/n479 , \Sudoku_DP/n478 , \Sudoku_DP/n477 ,
         \Sudoku_DP/n476 , \Sudoku_DP/n475 , \Sudoku_DP/n474 ,
         \Sudoku_DP/n473 , \Sudoku_DP/n472 , \Sudoku_DP/n471 ,
         \Sudoku_DP/n470 , \Sudoku_DP/n469 , \Sudoku_DP/n468 ,
         \Sudoku_DP/n467 , \Sudoku_DP/n466 , \Sudoku_DP/n465 ,
         \Sudoku_DP/n464 , \Sudoku_DP/n463 , \Sudoku_DP/n462 ,
         \Sudoku_DP/n461 , \Sudoku_DP/n460 , \Sudoku_DP/n459 ,
         \Sudoku_DP/n458 , \Sudoku_DP/n457 , \Sudoku_DP/n456 ,
         \Sudoku_DP/n455 , \Sudoku_DP/n454 , \Sudoku_DP/n453 ,
         \Sudoku_DP/n452 , \Sudoku_DP/n451 , \Sudoku_DP/n450 ,
         \Sudoku_DP/n449 , \Sudoku_DP/n448 , \Sudoku_DP/n447 ,
         \Sudoku_DP/n446 , \Sudoku_DP/n445 , \Sudoku_DP/n444 ,
         \Sudoku_DP/n443 , \Sudoku_DP/n442 , \Sudoku_DP/n441 ,
         \Sudoku_DP/n440 , \Sudoku_DP/n439 , \Sudoku_DP/n438 ,
         \Sudoku_DP/n437 , \Sudoku_DP/n436 , \Sudoku_DP/n435 ,
         \Sudoku_DP/n434 , \Sudoku_DP/n433 , \Sudoku_DP/n432 ,
         \Sudoku_DP/n431 , \Sudoku_DP/n430 , \Sudoku_DP/n429 ,
         \Sudoku_DP/n428 , \Sudoku_DP/n427 , \Sudoku_DP/n426 ,
         \Sudoku_DP/n425 , \Sudoku_DP/n424 , \Sudoku_DP/n423 ,
         \Sudoku_DP/n422 , \Sudoku_DP/n421 , \Sudoku_DP/n420 ,
         \Sudoku_DP/n419 , \Sudoku_DP/n418 , \Sudoku_DP/n417 ,
         \Sudoku_DP/n416 , \Sudoku_DP/n415 , \Sudoku_DP/n414 ,
         \Sudoku_DP/n413 , \Sudoku_DP/n412 , \Sudoku_DP/n411 ,
         \Sudoku_DP/n410 , \Sudoku_DP/n409 , \Sudoku_DP/n408 ,
         \Sudoku_DP/n407 , \Sudoku_DP/n406 , \Sudoku_DP/n405 ,
         \Sudoku_DP/n404 , \Sudoku_DP/n403 , \Sudoku_DP/n402 ,
         \Sudoku_DP/n401 , \Sudoku_DP/n400 , \Sudoku_DP/n399 ,
         \Sudoku_DP/n398 , \Sudoku_DP/n397 , \Sudoku_DP/n396 ,
         \Sudoku_DP/n395 , \Sudoku_DP/n394 , \Sudoku_DP/n393 ,
         \Sudoku_DP/n392 , \Sudoku_DP/n391 , \Sudoku_DP/n390 ,
         \Sudoku_DP/n389 , \Sudoku_DP/n388 , \Sudoku_DP/n387 ,
         \Sudoku_DP/n386 , \Sudoku_DP/n385 , \Sudoku_DP/n384 ,
         \Sudoku_DP/n383 , \Sudoku_DP/n382 , \Sudoku_DP/n381 ,
         \Sudoku_DP/n380 , \Sudoku_DP/n379 , \Sudoku_DP/n378 ,
         \Sudoku_DP/n377 , \Sudoku_DP/n376 , \Sudoku_DP/n375 ,
         \Sudoku_DP/n374 , \Sudoku_DP/n373 , \Sudoku_DP/n372 ,
         \Sudoku_DP/n371 , \Sudoku_DP/n370 , \Sudoku_DP/n369 ,
         \Sudoku_DP/n368 , \Sudoku_DP/n367 , \Sudoku_DP/n366 ,
         \Sudoku_DP/n365 , \Sudoku_DP/n364 , \Sudoku_DP/n363 ,
         \Sudoku_DP/n362 , \Sudoku_DP/n361 , \Sudoku_DP/n360 ,
         \Sudoku_DP/n359 , \Sudoku_DP/n358 , \Sudoku_DP/n357 ,
         \Sudoku_DP/n356 , \Sudoku_DP/n355 , \Sudoku_DP/n354 ,
         \Sudoku_DP/n353 , \Sudoku_DP/n352 , \Sudoku_DP/n351 ,
         \Sudoku_DP/n350 , \Sudoku_DP/n349 , \Sudoku_DP/n348 ,
         \Sudoku_DP/n346 , \Sudoku_DP/n344 , \Sudoku_DP/n342 ,
         \Sudoku_DP/n341 , \Sudoku_DP/n340 , \Sudoku_DP/n339 ,
         \Sudoku_DP/n338 , \Sudoku_DP/n337 , \Sudoku_DP/n336 ,
         \Sudoku_DP/n335 , \Sudoku_DP/n334 , \Sudoku_DP/n333 ,
         \Sudoku_DP/n332 , \Sudoku_DP/n331 , \Sudoku_DP/n330 ,
         \Sudoku_DP/n329 , \Sudoku_DP/n328 , \Sudoku_DP/n327 ,
         \Sudoku_DP/n326 , \Sudoku_DP/n325 , \Sudoku_DP/n324 ,
         \Sudoku_DP/n323 , \Sudoku_DP/n322 , \Sudoku_DP/n321 ,
         \Sudoku_DP/n320 , \Sudoku_DP/n319 , \Sudoku_DP/n318 ,
         \Sudoku_DP/n317 , \Sudoku_DP/n316 , \Sudoku_DP/n315 ,
         \Sudoku_DP/n314 , \Sudoku_DP/n313 , \Sudoku_DP/n312 ,
         \Sudoku_DP/n311 , \Sudoku_DP/n310 , \Sudoku_DP/n309 ,
         \Sudoku_DP/n308 , \Sudoku_DP/n307 , \Sudoku_DP/n306 ,
         \Sudoku_DP/n305 , \Sudoku_DP/n304 , \Sudoku_DP/n303 ,
         \Sudoku_DP/n302 , \Sudoku_DP/n301 , \Sudoku_DP/n300 ,
         \Sudoku_DP/n299 , \Sudoku_DP/n298 , \Sudoku_DP/n297 ,
         \Sudoku_DP/n296 , \Sudoku_DP/n295 , \Sudoku_DP/n294 ,
         \Sudoku_DP/n293 , \Sudoku_DP/n292 , \Sudoku_DP/n291 ,
         \Sudoku_DP/n290 , \Sudoku_DP/n289 , \Sudoku_DP/n288 ,
         \Sudoku_DP/n287 , \Sudoku_DP/n286 , \Sudoku_DP/n285 ,
         \Sudoku_DP/n284 , \Sudoku_DP/n283 , \Sudoku_DP/n282 ,
         \Sudoku_DP/n281 , \Sudoku_DP/n280 , \Sudoku_DP/n279 ,
         \Sudoku_DP/n278 , \Sudoku_DP/n277 , \Sudoku_DP/n276 ,
         \Sudoku_DP/n275 , \Sudoku_DP/n274 , \Sudoku_DP/n273 ,
         \Sudoku_DP/n272 , \Sudoku_DP/n271 , \Sudoku_DP/n270 ,
         \Sudoku_DP/n269 , \Sudoku_DP/n268 , \Sudoku_DP/n267 ,
         \Sudoku_DP/n266 , \Sudoku_DP/n265 , \Sudoku_DP/n264 ,
         \Sudoku_DP/n263 , \Sudoku_DP/n262 , \Sudoku_DP/n261 ,
         \Sudoku_DP/n260 , \Sudoku_DP/n259 , \Sudoku_DP/n258 ,
         \Sudoku_DP/n257 , \Sudoku_DP/n256 , \Sudoku_DP/n255 ,
         \Sudoku_DP/n254 , \Sudoku_DP/n253 , \Sudoku_DP/n252 ,
         \Sudoku_DP/n251 , \Sudoku_DP/n250 , \Sudoku_DP/n249 ,
         \Sudoku_DP/n248 , \Sudoku_DP/n247 , \Sudoku_DP/n246 ,
         \Sudoku_DP/n245 , \Sudoku_DP/n244 , \Sudoku_DP/n243 ,
         \Sudoku_DP/n242 , \Sudoku_DP/n241 , \Sudoku_DP/n240 ,
         \Sudoku_DP/n239 , \Sudoku_DP/n238 , \Sudoku_DP/n237 ,
         \Sudoku_DP/n236 , \Sudoku_DP/n235 , \Sudoku_DP/n234 ,
         \Sudoku_DP/n233 , \Sudoku_DP/n232 , \Sudoku_DP/n231 ,
         \Sudoku_DP/n230 , \Sudoku_DP/n229 , \Sudoku_DP/n228 ,
         \Sudoku_DP/n227 , \Sudoku_DP/n226 , \Sudoku_DP/n225 ,
         \Sudoku_DP/n224 , \Sudoku_DP/n223 , \Sudoku_DP/n222 ,
         \Sudoku_DP/n221 , \Sudoku_DP/n220 , \Sudoku_DP/n219 ,
         \Sudoku_DP/n218 , \Sudoku_DP/n215 , \Sudoku_DP/n214 ,
         \Sudoku_DP/n213 , \Sudoku_DP/n212 , \Sudoku_DP/n211 ,
         \Sudoku_DP/n210 , \Sudoku_DP/n209 , \Sudoku_DP/n208 ,
         \Sudoku_DP/n207 , \Sudoku_DP/n206 , \Sudoku_DP/n205 ,
         \Sudoku_DP/n204 , \Sudoku_DP/n203 , \Sudoku_DP/n202 ,
         \Sudoku_DP/n201 , \Sudoku_DP/n200 , \Sudoku_DP/n199 ,
         \Sudoku_DP/n198 , \Sudoku_DP/n197 , \Sudoku_DP/n196 ,
         \Sudoku_DP/n195 , \Sudoku_DP/n194 , \Sudoku_DP/n193 ,
         \Sudoku_DP/n192 , \Sudoku_DP/n191 , \Sudoku_DP/n190 ,
         \Sudoku_DP/n189 , \Sudoku_DP/n188 , \Sudoku_DP/n187 ,
         \Sudoku_DP/n186 , \Sudoku_DP/n185 , \Sudoku_DP/n184 ,
         \Sudoku_DP/n183 , \Sudoku_DP/n182 , \Sudoku_DP/n181 ,
         \Sudoku_DP/n180 , \Sudoku_DP/n179 , \Sudoku_DP/n178 ,
         \Sudoku_DP/n177 , \Sudoku_DP/n176 , \Sudoku_DP/n175 ,
         \Sudoku_DP/n174 , \Sudoku_DP/n173 , \Sudoku_DP/n172 ,
         \Sudoku_DP/n171 , \Sudoku_DP/n170 , \Sudoku_DP/n169 ,
         \Sudoku_DP/n168 , \Sudoku_DP/n167 , \Sudoku_DP/n166 ,
         \Sudoku_DP/n165 , \Sudoku_DP/n164 , \Sudoku_DP/n163 ,
         \Sudoku_DP/n162 , \Sudoku_DP/n161 , \Sudoku_DP/n160 ,
         \Sudoku_DP/n159 , \Sudoku_DP/n158 , \Sudoku_DP/n157 ,
         \Sudoku_DP/n156 , \Sudoku_DP/n155 , \Sudoku_DP/n154 ,
         \Sudoku_DP/n153 , \Sudoku_DP/n152 , \Sudoku_DP/n151 ,
         \Sudoku_DP/n150 , \Sudoku_DP/n149 , \Sudoku_DP/n148 ,
         \Sudoku_DP/n147 , \Sudoku_DP/n146 , \Sudoku_DP/n145 ,
         \Sudoku_DP/n144 , \Sudoku_DP/n143 , \Sudoku_DP/n142 ,
         \Sudoku_DP/n141 , \Sudoku_DP/n140 , \Sudoku_DP/n139 ,
         \Sudoku_DP/n138 , \Sudoku_DP/n137 , \Sudoku_DP/n136 ,
         \Sudoku_DP/n135 , \Sudoku_DP/n134 , \Sudoku_DP/n133 ,
         \Sudoku_DP/n132 , \Sudoku_DP/n131 , \Sudoku_DP/n130 ,
         \Sudoku_DP/n129 , \Sudoku_DP/n128 , \Sudoku_DP/n127 ,
         \Sudoku_DP/n126 , \Sudoku_DP/n125 , \Sudoku_DP/n124 ,
         \Sudoku_DP/n123 , \Sudoku_DP/n122 , \Sudoku_DP/n121 ,
         \Sudoku_DP/n120 , \Sudoku_DP/n119 , \Sudoku_DP/n118 ,
         \Sudoku_DP/n117 , \Sudoku_DP/n116 , \Sudoku_DP/n115 ,
         \Sudoku_DP/n114 , \Sudoku_DP/n113 , \Sudoku_DP/n112 ,
         \Sudoku_DP/n111 , \Sudoku_DP/n110 , \Sudoku_DP/n109 ,
         \Sudoku_DP/n108 , \Sudoku_DP/n107 , \Sudoku_DP/n106 ,
         \Sudoku_DP/n105 , \Sudoku_DP/n104 , \Sudoku_DP/n103 ,
         \Sudoku_DP/n102 , \Sudoku_DP/n101 , \Sudoku_DP/n100 , \Sudoku_DP/n99 ,
         \Sudoku_DP/n98 , \Sudoku_DP/n97 , \Sudoku_DP/n96 , \Sudoku_DP/n95 ,
         \Sudoku_DP/n94 , \Sudoku_DP/n93 , \Sudoku_DP/n92 , \Sudoku_DP/n91 ,
         \Sudoku_DP/n90 , \Sudoku_DP/n89 , \Sudoku_DP/n88 , \Sudoku_DP/n87 ,
         \Sudoku_DP/n86 , \Sudoku_DP/n85 , \Sudoku_DP/N604 , \Sudoku_DP/N603 ,
         \Sudoku_DP/N602 , \Sudoku_DP/N601 , \Sudoku_DP/N600 ,
         \Sudoku_DP/N599 , \Sudoku_DP/N598 , \Sudoku_DP/N597 ,
         \Sudoku_DP/N596 , \Sudoku_DP/N595 , \Sudoku_DP/N594 ,
         \Sudoku_DP/N593 , \Sudoku_DP/N592 , \Sudoku_DP/N591 ,
         \Sudoku_DP/N590 , \Sudoku_DP/N589 , \Sudoku_DP/N588 ,
         \Sudoku_DP/N587 , \Sudoku_DP/N586 , \Sudoku_DP/N585 ,
         \Sudoku_DP/N584 , \Sudoku_DP/N583 , \Sudoku_DP/N582 ,
         \Sudoku_DP/N581 , \Sudoku_DP/N580 , \Sudoku_DP/N579 ,
         \Sudoku_DP/N578 , \Sudoku_DP/N577 , \Sudoku_DP/N576 ,
         \Sudoku_DP/N575 , \Sudoku_DP/N574 , \Sudoku_DP/N573 ,
         \Sudoku_DP/N572 , \Sudoku_DP/N571 , \Sudoku_DP/N570 ,
         \Sudoku_DP/N569 , \Sudoku_DP/N568 , \Sudoku_DP/N567 ,
         \Sudoku_DP/N566 , \Sudoku_DP/N565 , \Sudoku_DP/N564 ,
         \Sudoku_DP/N563 , \Sudoku_DP/N562 , \Sudoku_DP/N561 ,
         \Sudoku_DP/N560 , \Sudoku_DP/N559 , \Sudoku_DP/N558 ,
         \Sudoku_DP/N557 , \Sudoku_DP/N556 , \Sudoku_DP/N555 ,
         \Sudoku_DP/N554 , \Sudoku_DP/N553 , \Sudoku_DP/N552 ,
         \Sudoku_DP/N551 , \Sudoku_DP/N550 , \Sudoku_DP/N549 ,
         \Sudoku_DP/N548 , \Sudoku_DP/N547 , \Sudoku_DP/N546 ,
         \Sudoku_DP/N545 , \Sudoku_DP/N544 , \Sudoku_DP/N543 ,
         \Sudoku_DP/N542 , \Sudoku_DP/N541 , \Sudoku_DP/N540 ,
         \Sudoku_DP/N539 , \Sudoku_DP/N538 , \Sudoku_DP/N537 ,
         \Sudoku_DP/N536 , \Sudoku_DP/N535 , \Sudoku_DP/N534 ,
         \Sudoku_DP/N533 , \Sudoku_DP/N532 , \Sudoku_DP/N531 ,
         \Sudoku_DP/N530 , \Sudoku_DP/N529 , \Sudoku_DP/N528 ,
         \Sudoku_DP/N527 , \Sudoku_DP/N526 , \Sudoku_DP/N525 ,
         \Sudoku_DP/N524 , \Sudoku_DP/N523 , \Sudoku_DP/N522 ,
         \Sudoku_DP/N521 , \Sudoku_DP/N520 , \Sudoku_DP/N519 ,
         \Sudoku_DP/N518 , \Sudoku_DP/N517 , \Sudoku_DP/N516 ,
         \Sudoku_DP/N515 , \Sudoku_DP/N514 , \Sudoku_DP/N513 ,
         \Sudoku_DP/N512 , \Sudoku_DP/N511 , \Sudoku_DP/N510 ,
         \Sudoku_DP/N509 , \Sudoku_DP/temp_solved , \Sudoku_RNG/n63 ,
         \Sudoku_RNG/n62 , \Sudoku_RNG/n61 , \Sudoku_RNG/n60 ,
         \Sudoku_RNG/n59 , \Sudoku_RNG/n58 , \Sudoku_RNG/n57 ,
         \Sudoku_RNG/n56 , \Sudoku_RNG/n55 , \Sudoku_RNG/n54 ,
         \Sudoku_RNG/n53 , \Sudoku_RNG/n52 , \Sudoku_RNG/n51 ,
         \Sudoku_RNG/n50 , \Sudoku_RNG/n49 , \Sudoku_RNG/n48 ,
         \Sudoku_RNG/n47 , \Sudoku_RNG/n46 , \Sudoku_RNG/n45 ,
         \Sudoku_RNG/n44 , \Sudoku_RNG/n43 , \Sudoku_RNG/n42 ,
         \Sudoku_RNG/n41 , \Sudoku_RNG/n40 , \Sudoku_RNG/n39 ,
         \Sudoku_RNG/n38 , \Sudoku_RNG/n37 , \Sudoku_RNG/n36 ,
         \Sudoku_RNG/n35 , \Sudoku_RNG/n34 , \Sudoku_RNG/n33 ,
         \Sudoku_RNG/n32 , \Sudoku_RNG/n31 , \Sudoku_RNG/n30 ,
         \Sudoku_RNG/n29 , \Sudoku_RNG/n27 , \Sudoku_RNG/n24 ,
         \Sudoku_RNG/n23 , \Sudoku_RNG/n22 , \Sudoku_RNG/n21 ,
         \Sudoku_RNG/n20 , \Sudoku_RNG/n19 , \Sudoku_RNG/n18 ,
         \Sudoku_RNG/n17 , \Sudoku_RNG/n16 , \Sudoku_RNG/n15 ,
         \Sudoku_RNG/n14 , \Sudoku_RNG/n13 , \Sudoku_RNG/n12 ,
         \Sudoku_RNG/n11 , \Sudoku_RNG/n10 , \Sudoku_RNG/n9 , \Sudoku_RNG/n8 ,
         \Sudoku_RNG/n7 , \Sudoku_RNG/n6 , \Sudoku_RNG/n5 , \Sudoku_RNG/n4 ,
         \Sudoku_RNG/n3 , \Sudoku_RNG/n2 , \Sudoku_RNG/n1 , \Sudoku_RNG/N51 ,
         \Sudoku_RNG/N50 , \Sudoku_RNG/N49 , \Sudoku_RNG/N48 ,
         \Sudoku_RNG/N47 , \Sudoku_RNG/N46 , \Sudoku_RNG/N45 ,
         \Sudoku_RNG/N44 , \Sudoku_RNG/N43 , \Sudoku_RNG/N42 ,
         \Sudoku_RNG/N41 , \Sudoku_RNG/N40 , \Sudoku_RNG/bit , n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48;
  wire   [3:0] \Sudoku_FSM/next_state ;
  wire   [15:0] \Sudoku_DP/temp_fill_flag ;
  wire   [2:0] \Sudoku_DP/temp_user_board_15 ;
  wire   [2:0] \Sudoku_DP/temp_user_board_14 ;
  wire   [2:0] \Sudoku_DP/temp_user_board_13 ;
  wire   [2:0] \Sudoku_DP/temp_user_board_12 ;
  wire   [2:0] \Sudoku_DP/temp_user_board_11 ;
  wire   [2:0] \Sudoku_DP/temp_user_board_10 ;
  wire   [2:0] \Sudoku_DP/temp_user_board_9 ;
  wire   [2:0] \Sudoku_DP/temp_user_board_8 ;
  wire   [2:0] \Sudoku_DP/temp_user_board_7 ;
  wire   [2:0] \Sudoku_DP/temp_user_board_6 ;
  wire   [2:0] \Sudoku_DP/temp_user_board_5 ;
  wire   [2:0] \Sudoku_DP/temp_user_board_4 ;
  wire   [2:0] \Sudoku_DP/temp_user_board_3 ;
  wire   [2:0] \Sudoku_DP/temp_user_board_2 ;
  wire   [2:0] \Sudoku_DP/temp_user_board_1 ;
  wire   [2:0] \Sudoku_DP/temp_user_board_0 ;
  wire   [3:0] \Sudoku_DP/current_cell ;
  wire   [1:0] \Sudoku_DP/current_row ;
  wire   [2:0] \Sudoku_DP/temp_real_board_15 ;
  wire   [2:0] \Sudoku_DP/temp_real_board_14 ;
  wire   [2:0] \Sudoku_DP/temp_real_board_13 ;
  wire   [2:0] \Sudoku_DP/temp_real_board_12 ;
  wire   [2:0] \Sudoku_DP/temp_real_board_10 ;
  wire   [2:0] \Sudoku_DP/temp_real_board_9 ;
  wire   [2:0] \Sudoku_DP/temp_real_board_11 ;
  wire   [2:0] \Sudoku_DP/temp_real_board_8 ;
  wire   [2:0] \Sudoku_DP/temp_real_board_6 ;
  wire   [2:0] \Sudoku_DP/temp_real_board_5 ;
  wire   [2:0] \Sudoku_DP/temp_real_board_7 ;
  wire   [2:0] \Sudoku_DP/temp_real_board_4 ;
  wire   [2:0] \Sudoku_DP/temp_real_board_3 ;
  wire   [2:0] \Sudoku_DP/temp_real_board_2 ;
  wire   [2:0] \Sudoku_DP/temp_real_board_1 ;
  wire   [2:0] \Sudoku_DP/temp_real_board_0 ;
  wire   [3:0] \Sudoku_RNG/temp_rand_B ;
  wire   [3:0] \Sudoku_RNG/temp_rand_A ;
  wire   [3:0] \Sudoku_RNG/temp_rand_setup ;
  wire   [10:0] \Sudoku_RNG/lfsr ;

  OR2X1 \Sudoku_FSM/U61  ( .A(\Sudoku_FSM/next_state [2]), .B(
        \Sudoku_FSM/next_state [3]), .Y(\Sudoku_FSM/n46 ) );
  NAND2X1 \Sudoku_FSM/U60  ( .A(\Sudoku_FSM/next_state [0]), .B(
        \Sudoku_FSM/n2 ), .Y(\Sudoku_FSM/n49 ) );
  NOR2X1 \Sudoku_FSM/U59  ( .A(\Sudoku_FSM/n46 ), .B(\Sudoku_FSM/n49 ), .Y(
        \Sudoku_FSM/N151 ) );
  NAND2X1 \Sudoku_FSM/U58  ( .A(\Sudoku_FSM/next_state [1]), .B(
        \Sudoku_FSM/n3 ), .Y(\Sudoku_FSM/n48 ) );
  NOR2X1 \Sudoku_FSM/U57  ( .A(\Sudoku_FSM/n46 ), .B(\Sudoku_FSM/n48 ), .Y(
        \Sudoku_FSM/N152 ) );
  NAND2X1 \Sudoku_FSM/U56  ( .A(\Sudoku_FSM/next_state [0]), .B(
        \Sudoku_FSM/next_state [1]), .Y(\Sudoku_FSM/n47 ) );
  NOR2X1 \Sudoku_FSM/U55  ( .A(\Sudoku_FSM/n46 ), .B(\Sudoku_FSM/n47 ), .Y(
        \Sudoku_FSM/N153 ) );
  NAND2X1 \Sudoku_FSM/U54  ( .A(\Sudoku_FSM/next_state [2]), .B(
        \Sudoku_FSM/n1 ), .Y(\Sudoku_FSM/n43 ) );
  NAND2X1 \Sudoku_FSM/U53  ( .A(\Sudoku_FSM/n3 ), .B(\Sudoku_FSM/n2 ), .Y(
        \Sudoku_FSM/n45 ) );
  NOR2X1 \Sudoku_FSM/U52  ( .A(\Sudoku_FSM/n43 ), .B(\Sudoku_FSM/n45 ), .Y(
        \Sudoku_FSM/N154 ) );
  OR2X1 \Sudoku_FSM/U51  ( .A(\Sudoku_FSM/n43 ), .B(\Sudoku_FSM/next_state [1]), .Y(\Sudoku_FSM/n44 ) );
  NOR2X1 \Sudoku_FSM/U50  ( .A(\Sudoku_FSM/n3 ), .B(\Sudoku_FSM/n44 ), .Y(
        \Sudoku_FSM/N155 ) );
  NOR2X1 \Sudoku_FSM/U49  ( .A(\Sudoku_FSM/n2 ), .B(\Sudoku_FSM/n43 ), .Y(
        \Sudoku_FSM/N157 ) );
  NAND2X1 \Sudoku_FSM/U48  ( .A(\Sudoku_FSM/n7 ), .B(\Sudoku_FSM/n12 ), .Y(
        \Sudoku_FSM/n41 ) );
  OAI21X1 \Sudoku_FSM/U47  ( .A(out_state[0]), .B(\Sudoku_FSM/n13 ), .C(
        \Sudoku_FSM/n41 ), .Y(\Sudoku_FSM/n42 ) );
  AOI21X1 \Sudoku_FSM/U46  ( .A(out_state[0]), .B(out_state[3]), .C(
        \Sudoku_FSM/n42 ), .Y(\Sudoku_FSM/n39 ) );
  NAND3X1 \Sudoku_FSM/U45  ( .A(\Sudoku_FSM/n41 ), .B(\Sudoku_FSM/n10 ), .C(
        out_state[1]), .Y(\Sudoku_FSM/n40 ) );
  OAI21X1 \Sudoku_FSM/U44  ( .A(out_state[1]), .B(\Sudoku_FSM/n39 ), .C(
        \Sudoku_FSM/n40 ), .Y(\Sudoku_FSM/n34 ) );
  NAND2X1 \Sudoku_FSM/U43  ( .A(\Sudoku_FSM/n10 ), .B(\Sudoku_FSM/n7 ), .Y(
        \Sudoku_FSM/n26 ) );
  NOR2X1 \Sudoku_FSM/U42  ( .A(out_state[3]), .B(out_state[1]), .Y(
        \Sudoku_FSM/n38 ) );
  NAND3X1 \Sudoku_FSM/U41  ( .A(out_state[2]), .B(out_state[0]), .C(
        \Sudoku_FSM/n38 ), .Y(\Sudoku_FSM/n27 ) );
  NOR2X1 \Sudoku_FSM/U40  ( .A(out_state[3]), .B(out_state[2]), .Y(
        \Sudoku_FSM/n37 ) );
  NAND3X1 \Sudoku_FSM/U39  ( .A(out_state[1]), .B(out_state[0]), .C(
        \Sudoku_FSM/n37 ), .Y(\Sudoku_FSM/n23 ) );
  OAI21X1 \Sudoku_FSM/U38  ( .A(\Sudoku_FSM/n6 ), .B(\Sudoku_FSM/n5 ), .C(
        \Sudoku_FSM/n12 ), .Y(\Sudoku_FSM/n36 ) );
  OAI21X1 \Sudoku_FSM/U37  ( .A(\Sudoku_FSM/n12 ), .B(\Sudoku_FSM/n26 ), .C(
        \Sudoku_FSM/n36 ), .Y(\Sudoku_FSM/n35 ) );
  AOI21X1 \Sudoku_FSM/U36  ( .A(\Sudoku_FSM/n34 ), .B(\Sudoku_FSM/n8 ), .C(
        \Sudoku_FSM/n35 ), .Y(\Sudoku_FSM/n32 ) );
  OR2X1 \Sudoku_FSM/U35  ( .A(in_new_game), .B(n32), .Y(\Sudoku_FSM/n33 ) );
  NOR2X1 \Sudoku_FSM/U34  ( .A(\Sudoku_FSM/n32 ), .B(\Sudoku_FSM/n33 ), .Y(
        \Sudoku_FSM/N93 ) );
  NOR2X1 \Sudoku_FSM/U33  ( .A(out_state[1]), .B(\Sudoku_FSM/n10 ), .Y(
        \Sudoku_FSM/n31 ) );
  AOI22X1 \Sudoku_FSM/U32  ( .A(\Sudoku_FSM/n31 ), .B(in_enter), .C(
        out_state[1]), .D(\Sudoku_FSM/n10 ), .Y(\Sudoku_FSM/n30 ) );
  OAI21X1 \Sudoku_FSM/U31  ( .A(out_state[3]), .B(\Sudoku_FSM/n30 ), .C(
        \Sudoku_RNG/n27 ), .Y(\Sudoku_FSM/n29 ) );
  AOI21X1 \Sudoku_FSM/U30  ( .A(\Sudoku_FSM/n5 ), .B(\Sudoku_FSM/n12 ), .C(
        \Sudoku_FSM/n29 ), .Y(\Sudoku_FSM/n28 ) );
  NOR2X1 \Sudoku_FSM/U29  ( .A(n31), .B(\Sudoku_FSM/n28 ), .Y(\Sudoku_FSM/N94 ) );
  OAI21X1 \Sudoku_FSM/U28  ( .A(\Sudoku_FSM/n8 ), .B(\Sudoku_FSM/n26 ), .C(
        \Sudoku_FSM/n27 ), .Y(\Sudoku_FSM/n20 ) );
  NAND3X1 \Sudoku_FSM/U27  ( .A(\Sudoku_FSM/n9 ), .B(\Sudoku_FSM/n8 ), .C(
        \Sudoku_FSM/n10 ), .Y(\Sudoku_FSM/n24 ) );
  NAND2X1 \Sudoku_FSM/U26  ( .A(out_state[3]), .B(\Sudoku_FSM/n13 ), .Y(
        \Sudoku_FSM/n25 ) );
  OAI22X1 \Sudoku_FSM/U25  ( .A(\Sudoku_FSM/n23 ), .B(\Sudoku_FSM/n12 ), .C(
        \Sudoku_FSM/n24 ), .D(\Sudoku_FSM/n25 ), .Y(\Sudoku_FSM/n21 ) );
  NOR2X1 \Sudoku_FSM/U24  ( .A(n31), .B(in_new_game), .Y(\Sudoku_FSM/n22 ) );
  OAI21X1 \Sudoku_FSM/U23  ( .A(\Sudoku_FSM/n20 ), .B(\Sudoku_FSM/n21 ), .C(
        \Sudoku_FSM/n22 ), .Y(\Sudoku_FSM/n19 ) );
  XOR2X1 \Sudoku_FSM/U22  ( .A(\Sudoku_FSM/n9 ), .B(out_state[2]), .Y(
        \Sudoku_FSM/n15 ) );
  OAI21X1 \Sudoku_FSM/U21  ( .A(out_solved), .B(out_state[0]), .C(
        \Sudoku_FSM/n8 ), .Y(\Sudoku_FSM/n17 ) );
  NAND3X1 \Sudoku_FSM/U20  ( .A(out_state[0]), .B(\Sudoku_FSM/n7 ), .C(
        out_state[2]), .Y(\Sudoku_FSM/n18 ) );
  OAI21X1 \Sudoku_FSM/U19  ( .A(\Sudoku_FSM/n7 ), .B(\Sudoku_FSM/n17 ), .C(
        \Sudoku_FSM/n18 ), .Y(\Sudoku_FSM/n16 ) );
  NAND2X1 \Sudoku_FSM/U18  ( .A(\Sudoku_FSM/n15 ), .B(\Sudoku_FSM/n16 ), .Y(
        \Sudoku_FSM/n14 ) );
  AOI21X1 \Sudoku_FSM/U17  ( .A(\Sudoku_FSM/n14 ), .B(\Sudoku_RNG/n27 ), .C(
        n31), .Y(\Sudoku_FSM/N96 ) );
  INVX2 \Sudoku_FSM/U16  ( .A(out_solved), .Y(\Sudoku_FSM/n13 ) );
  INVX2 \Sudoku_FSM/U15  ( .A(in_enter), .Y(\Sudoku_FSM/n12 ) );
  INVX2 \Sudoku_FSM/U13  ( .A(out_state[0]), .Y(\Sudoku_FSM/n10 ) );
  INVX2 \Sudoku_FSM/U12  ( .A(out_state[1]), .Y(\Sudoku_FSM/n9 ) );
  INVX2 \Sudoku_FSM/U11  ( .A(out_state[2]), .Y(\Sudoku_FSM/n8 ) );
  INVX2 \Sudoku_FSM/U10  ( .A(out_state[3]), .Y(\Sudoku_FSM/n7 ) );
  INVX2 \Sudoku_FSM/U9  ( .A(\Sudoku_FSM/n27 ), .Y(\Sudoku_FSM/n6 ) );
  INVX2 \Sudoku_FSM/U8  ( .A(\Sudoku_FSM/n23 ), .Y(\Sudoku_FSM/n5 ) );
  INVX2 \Sudoku_FSM/U7  ( .A(\Sudoku_FSM/n19 ), .Y(\Sudoku_FSM/n4 ) );
  INVX2 \Sudoku_FSM/U6  ( .A(\Sudoku_FSM/next_state [0]), .Y(\Sudoku_FSM/n3 )
         );
  INVX2 \Sudoku_FSM/U5  ( .A(\Sudoku_FSM/next_state [1]), .Y(\Sudoku_FSM/n2 )
         );
  INVX2 \Sudoku_FSM/U4  ( .A(\Sudoku_FSM/next_state [3]), .Y(\Sudoku_FSM/n1 )
         );
  AND2X2 \Sudoku_FSM/U3  ( .A(\Sudoku_FSM/n3 ), .B(\Sudoku_FSM/N157 ), .Y(
        \Sudoku_FSM/N156 ) );
  DFFNEGX1 \Sudoku_FSM/col_flag_reg  ( .D(\Sudoku_FSM/N155 ), .CLK(n48), .Q(
        out_col_flag) );
  DFFNEGX1 \Sudoku_FSM/row_flag_reg  ( .D(\Sudoku_FSM/N154 ), .CLK(n48), .Q(
        out_row_flag) );
  DFFNEGX1 \Sudoku_FSM/set_diff_flag_reg  ( .D(\Sudoku_FSM/N153 ), .CLK(n48), 
        .Q(out_set_diff_flag) );
  DFFNEGX1 \Sudoku_FSM/set_board_flag_reg  ( .D(\Sudoku_FSM/N152 ), .CLK(n48), 
        .Q(out_set_board_flag) );
  DFFNEGX1 \Sudoku_FSM/gen_rand_flag_reg  ( .D(\Sudoku_FSM/N151 ), .CLK(n48), 
        .Q(out_gen_rand_flag) );
  DFFNEGX1 \Sudoku_FSM/val_flag_reg  ( .D(\Sudoku_FSM/N156 ), .CLK(n48), .Q(
        out_val_flag) );
  DFFNEGX1 \Sudoku_FSM/check_flag_reg  ( .D(\Sudoku_FSM/N157 ), .CLK(n47), .Q(
        out_check_flag) );
  DFFNEGX1 \Sudoku_FSM/next_state_reg[0]  ( .D(\Sudoku_FSM/N93 ), .CLK(in_clka), .Q(\Sudoku_FSM/next_state [0]) );
  DFFNEGX1 \Sudoku_FSM/state_reg[1]  ( .D(\Sudoku_FSM/next_state [1]), .CLK(
        n47), .Q(out_state[1]) );
  DFFNEGX1 \Sudoku_FSM/next_state_reg[1]  ( .D(\Sudoku_FSM/N94 ), .CLK(in_clka), .Q(\Sudoku_FSM/next_state [1]) );
  DFFNEGX1 \Sudoku_FSM/state_reg[3]  ( .D(\Sudoku_FSM/next_state [3]), .CLK(
        n47), .Q(out_state[3]) );
  DFFNEGX1 \Sudoku_FSM/next_state_reg[3]  ( .D(\Sudoku_FSM/N96 ), .CLK(in_clka), .Q(\Sudoku_FSM/next_state [3]) );
  DFFNEGX1 \Sudoku_FSM/state_reg[2]  ( .D(\Sudoku_FSM/next_state [2]), .CLK(
        n47), .Q(out_state[2]) );
  DFFNEGX1 \Sudoku_FSM/next_state_reg[2]  ( .D(\Sudoku_FSM/n4 ), .CLK(in_clka), 
        .Q(\Sudoku_FSM/next_state [2]) );
  DFFNEGX1 \Sudoku_FSM/state_reg[0]  ( .D(\Sudoku_FSM/next_state [0]), .CLK(
        n47), .Q(out_state[0]) );
  NOR2X1 \Sudoku_DP/U678  ( .A(in_new_game), .B(n31), .Y(\Sudoku_DP/n349 ) );
  NOR2X1 \Sudoku_DP/U677  ( .A(n17), .B(\Sudoku_DP/n156 ), .Y(\Sudoku_DP/N509 ) );
  NOR2X1 \Sudoku_DP/U676  ( .A(n18), .B(\Sudoku_DP/n155 ), .Y(\Sudoku_DP/N510 ) );
  NOR2X1 \Sudoku_DP/U675  ( .A(\Sudoku_FSM/n33 ), .B(\Sudoku_DP/n154 ), .Y(
        \Sudoku_DP/N511 ) );
  NOR2X1 \Sudoku_DP/U674  ( .A(n18), .B(\Sudoku_DP/n159 ), .Y(\Sudoku_DP/N512 ) );
  NOR2X1 \Sudoku_DP/U673  ( .A(n18), .B(\Sudoku_DP/n158 ), .Y(\Sudoku_DP/N513 ) );
  NOR2X1 \Sudoku_DP/U672  ( .A(n18), .B(\Sudoku_DP/n157 ), .Y(\Sudoku_DP/N514 ) );
  NOR2X1 \Sudoku_DP/U671  ( .A(n17), .B(\Sudoku_DP/n162 ), .Y(\Sudoku_DP/N515 ) );
  NOR2X1 \Sudoku_DP/U670  ( .A(\Sudoku_FSM/n33 ), .B(\Sudoku_DP/n161 ), .Y(
        \Sudoku_DP/N516 ) );
  NOR2X1 \Sudoku_DP/U669  ( .A(n18), .B(\Sudoku_DP/n160 ), .Y(\Sudoku_DP/N517 ) );
  NOR2X1 \Sudoku_DP/U668  ( .A(n17), .B(\Sudoku_DP/n168 ), .Y(\Sudoku_DP/N518 ) );
  NOR2X1 \Sudoku_DP/U667  ( .A(n17), .B(\Sudoku_DP/n167 ), .Y(\Sudoku_DP/N519 ) );
  NOR2X1 \Sudoku_DP/U666  ( .A(n17), .B(\Sudoku_DP/n166 ), .Y(\Sudoku_DP/N520 ) );
  NOR2X1 \Sudoku_DP/U665  ( .A(\Sudoku_FSM/n33 ), .B(\Sudoku_DP/n171 ), .Y(
        \Sudoku_DP/N521 ) );
  NOR2X1 \Sudoku_DP/U664  ( .A(n18), .B(\Sudoku_DP/n170 ), .Y(\Sudoku_DP/N522 ) );
  NOR2X1 \Sudoku_DP/U663  ( .A(n18), .B(\Sudoku_DP/n169 ), .Y(\Sudoku_DP/N523 ) );
  NOR2X1 \Sudoku_DP/U662  ( .A(n17), .B(\Sudoku_DP/n174 ), .Y(\Sudoku_DP/N524 ) );
  NOR2X1 \Sudoku_DP/U661  ( .A(n18), .B(\Sudoku_DP/n173 ), .Y(\Sudoku_DP/N525 ) );
  NOR2X1 \Sudoku_DP/U660  ( .A(\Sudoku_FSM/n33 ), .B(\Sudoku_DP/n172 ), .Y(
        \Sudoku_DP/N526 ) );
  NOR2X1 \Sudoku_DP/U659  ( .A(n18), .B(\Sudoku_DP/n177 ), .Y(\Sudoku_DP/N527 ) );
  NOR2X1 \Sudoku_DP/U658  ( .A(n17), .B(\Sudoku_DP/n176 ), .Y(\Sudoku_DP/N528 ) );
  NOR2X1 \Sudoku_DP/U657  ( .A(n17), .B(\Sudoku_DP/n175 ), .Y(\Sudoku_DP/N529 ) );
  NOR2X1 \Sudoku_DP/U656  ( .A(n18), .B(\Sudoku_DP/n114 ), .Y(\Sudoku_DP/N530 ) );
  NOR2X1 \Sudoku_DP/U655  ( .A(n18), .B(\Sudoku_DP/n113 ), .Y(\Sudoku_DP/N531 ) );
  NOR2X1 \Sudoku_DP/U654  ( .A(n18), .B(\Sudoku_DP/n112 ), .Y(\Sudoku_DP/N532 ) );
  NOR2X1 \Sudoku_DP/U653  ( .A(n17), .B(\Sudoku_DP/n180 ), .Y(\Sudoku_DP/N533 ) );
  NOR2X1 \Sudoku_DP/U652  ( .A(n17), .B(\Sudoku_DP/n179 ), .Y(\Sudoku_DP/N534 ) );
  NOR2X1 \Sudoku_DP/U651  ( .A(n17), .B(\Sudoku_DP/n178 ), .Y(\Sudoku_DP/N535 ) );
  NOR2X1 \Sudoku_DP/U650  ( .A(n18), .B(\Sudoku_DP/n147 ), .Y(\Sudoku_DP/N536 ) );
  NOR2X1 \Sudoku_DP/U649  ( .A(n17), .B(\Sudoku_DP/n146 ), .Y(\Sudoku_DP/N537 ) );
  NOR2X1 \Sudoku_DP/U648  ( .A(n17), .B(\Sudoku_DP/n145 ), .Y(\Sudoku_DP/N538 ) );
  NOR2X1 \Sudoku_DP/U647  ( .A(n18), .B(\Sudoku_DP/n165 ), .Y(\Sudoku_DP/N539 ) );
  NOR2X1 \Sudoku_DP/U646  ( .A(n18), .B(\Sudoku_DP/n164 ), .Y(\Sudoku_DP/N540 ) );
  NOR2X1 \Sudoku_DP/U645  ( .A(n17), .B(\Sudoku_DP/n163 ), .Y(\Sudoku_DP/N541 ) );
  NOR2X1 \Sudoku_DP/U644  ( .A(n17), .B(\Sudoku_DP/n150 ), .Y(\Sudoku_DP/N542 ) );
  NOR2X1 \Sudoku_DP/U643  ( .A(n17), .B(\Sudoku_DP/n149 ), .Y(\Sudoku_DP/N543 ) );
  NOR2X1 \Sudoku_DP/U642  ( .A(n18), .B(\Sudoku_DP/n148 ), .Y(\Sudoku_DP/N544 ) );
  NOR2X1 \Sudoku_DP/U641  ( .A(n17), .B(\Sudoku_DP/n132 ), .Y(\Sudoku_DP/N545 ) );
  NOR2X1 \Sudoku_DP/U640  ( .A(n18), .B(\Sudoku_DP/n131 ), .Y(\Sudoku_DP/N546 ) );
  NOR2X1 \Sudoku_DP/U639  ( .A(n18), .B(\Sudoku_DP/n130 ), .Y(\Sudoku_DP/N547 ) );
  NOR2X1 \Sudoku_DP/U638  ( .A(n17), .B(\Sudoku_DP/n117 ), .Y(\Sudoku_DP/N548 ) );
  NOR2X1 \Sudoku_DP/U637  ( .A(n17), .B(\Sudoku_DP/n116 ), .Y(\Sudoku_DP/N549 ) );
  NOR2X1 \Sudoku_DP/U636  ( .A(n18), .B(\Sudoku_DP/n115 ), .Y(\Sudoku_DP/N550 ) );
  NOR2X1 \Sudoku_DP/U635  ( .A(n17), .B(\Sudoku_DP/n87 ), .Y(\Sudoku_DP/N551 )
         );
  NOR2X1 \Sudoku_DP/U634  ( .A(n18), .B(\Sudoku_DP/n86 ), .Y(\Sudoku_DP/N552 )
         );
  NOR2X1 \Sudoku_DP/U633  ( .A(n18), .B(\Sudoku_DP/n85 ), .Y(\Sudoku_DP/N553 )
         );
  NOR2X1 \Sudoku_DP/U632  ( .A(n17), .B(\Sudoku_DP/n111 ), .Y(\Sudoku_DP/N554 ) );
  NOR2X1 \Sudoku_DP/U631  ( .A(\Sudoku_FSM/n33 ), .B(\Sudoku_DP/n110 ), .Y(
        \Sudoku_DP/N555 ) );
  NOR2X1 \Sudoku_DP/U630  ( .A(\Sudoku_FSM/n33 ), .B(\Sudoku_DP/n109 ), .Y(
        \Sudoku_DP/N556 ) );
  NOR2X1 \Sudoku_DP/U629  ( .A(\Sudoku_FSM/n33 ), .B(\Sudoku_DP/n194 ), .Y(
        \Sudoku_DP/N557 ) );
  NOR2X1 \Sudoku_DP/U628  ( .A(\Sudoku_FSM/n33 ), .B(\Sudoku_DP/n193 ), .Y(
        \Sudoku_DP/N558 ) );
  NOR2X1 \Sudoku_DP/U627  ( .A(\Sudoku_FSM/n33 ), .B(\Sudoku_DP/n192 ), .Y(
        \Sudoku_DP/N559 ) );
  NOR2X1 \Sudoku_DP/U626  ( .A(\Sudoku_FSM/n33 ), .B(\Sudoku_DP/n197 ), .Y(
        \Sudoku_DP/N560 ) );
  NOR2X1 \Sudoku_DP/U625  ( .A(\Sudoku_FSM/n33 ), .B(\Sudoku_DP/n196 ), .Y(
        \Sudoku_DP/N561 ) );
  NOR2X1 \Sudoku_DP/U624  ( .A(\Sudoku_FSM/n33 ), .B(\Sudoku_DP/n195 ), .Y(
        \Sudoku_DP/N562 ) );
  NOR2X1 \Sudoku_DP/U623  ( .A(\Sudoku_FSM/n33 ), .B(\Sudoku_DP/n200 ), .Y(
        \Sudoku_DP/N563 ) );
  NOR2X1 \Sudoku_DP/U622  ( .A(\Sudoku_FSM/n33 ), .B(\Sudoku_DP/n199 ), .Y(
        \Sudoku_DP/N564 ) );
  NOR2X1 \Sudoku_DP/U621  ( .A(n16), .B(\Sudoku_DP/n198 ), .Y(\Sudoku_DP/N565 ) );
  NOR2X1 \Sudoku_DP/U620  ( .A(n16), .B(\Sudoku_DP/n203 ), .Y(\Sudoku_DP/N566 ) );
  NOR2X1 \Sudoku_DP/U619  ( .A(n16), .B(\Sudoku_DP/n202 ), .Y(\Sudoku_DP/N567 ) );
  NOR2X1 \Sudoku_DP/U618  ( .A(n18), .B(\Sudoku_DP/n201 ), .Y(\Sudoku_DP/N568 ) );
  NOR2X1 \Sudoku_DP/U617  ( .A(n18), .B(\Sudoku_DP/n206 ), .Y(\Sudoku_DP/N569 ) );
  NOR2X1 \Sudoku_DP/U616  ( .A(n18), .B(\Sudoku_DP/n205 ), .Y(\Sudoku_DP/N570 ) );
  NOR2X1 \Sudoku_DP/U615  ( .A(n18), .B(\Sudoku_DP/n204 ), .Y(\Sudoku_DP/N571 ) );
  NOR2X1 \Sudoku_DP/U614  ( .A(n18), .B(\Sudoku_DP/n209 ), .Y(\Sudoku_DP/N572 ) );
  NOR2X1 \Sudoku_DP/U613  ( .A(n18), .B(\Sudoku_DP/n208 ), .Y(\Sudoku_DP/N573 ) );
  NOR2X1 \Sudoku_DP/U612  ( .A(n18), .B(\Sudoku_DP/n207 ), .Y(\Sudoku_DP/N574 ) );
  NOR2X1 \Sudoku_DP/U611  ( .A(n18), .B(\Sudoku_DP/n212 ), .Y(\Sudoku_DP/N575 ) );
  NOR2X1 \Sudoku_DP/U610  ( .A(n18), .B(\Sudoku_DP/n211 ), .Y(\Sudoku_DP/N576 ) );
  NOR2X1 \Sudoku_DP/U609  ( .A(n18), .B(\Sudoku_DP/n210 ), .Y(\Sudoku_DP/N577 ) );
  NOR2X1 \Sudoku_DP/U608  ( .A(n18), .B(\Sudoku_DP/n120 ), .Y(\Sudoku_DP/N578 ) );
  NOR2X1 \Sudoku_DP/U607  ( .A(n18), .B(\Sudoku_DP/n119 ), .Y(\Sudoku_DP/N579 ) );
  NOR2X1 \Sudoku_DP/U606  ( .A(n18), .B(\Sudoku_DP/n118 ), .Y(\Sudoku_DP/N580 ) );
  NOR2X1 \Sudoku_DP/U605  ( .A(n17), .B(\Sudoku_DP/n123 ), .Y(\Sudoku_DP/N581 ) );
  NOR2X1 \Sudoku_DP/U604  ( .A(n17), .B(\Sudoku_DP/n122 ), .Y(\Sudoku_DP/N582 ) );
  NOR2X1 \Sudoku_DP/U603  ( .A(n17), .B(\Sudoku_DP/n121 ), .Y(\Sudoku_DP/N583 ) );
  NOR2X1 \Sudoku_DP/U602  ( .A(n17), .B(\Sudoku_DP/n126 ), .Y(\Sudoku_DP/N584 ) );
  NOR2X1 \Sudoku_DP/U601  ( .A(n17), .B(\Sudoku_DP/n125 ), .Y(\Sudoku_DP/N585 ) );
  NOR2X1 \Sudoku_DP/U600  ( .A(n17), .B(\Sudoku_DP/n124 ), .Y(\Sudoku_DP/N586 ) );
  NOR2X1 \Sudoku_DP/U599  ( .A(n17), .B(\Sudoku_DP/n129 ), .Y(\Sudoku_DP/N587 ) );
  NOR2X1 \Sudoku_DP/U598  ( .A(n17), .B(\Sudoku_DP/n128 ), .Y(\Sudoku_DP/N588 ) );
  NOR2X1 \Sudoku_DP/U597  ( .A(n17), .B(\Sudoku_DP/n127 ), .Y(\Sudoku_DP/N589 ) );
  NOR2X1 \Sudoku_DP/U596  ( .A(n17), .B(\Sudoku_DP/n135 ), .Y(\Sudoku_DP/N590 ) );
  NOR2X1 \Sudoku_DP/U595  ( .A(n17), .B(\Sudoku_DP/n134 ), .Y(\Sudoku_DP/N591 ) );
  NOR2X1 \Sudoku_DP/U594  ( .A(n17), .B(\Sudoku_DP/n133 ), .Y(\Sudoku_DP/N592 ) );
  NOR2X1 \Sudoku_DP/U593  ( .A(n17), .B(\Sudoku_DP/n138 ), .Y(\Sudoku_DP/N593 ) );
  NOR2X1 \Sudoku_DP/U592  ( .A(n16), .B(\Sudoku_DP/n137 ), .Y(\Sudoku_DP/N594 ) );
  NOR2X1 \Sudoku_DP/U591  ( .A(n16), .B(\Sudoku_DP/n136 ), .Y(\Sudoku_DP/N595 ) );
  NOR2X1 \Sudoku_DP/U590  ( .A(n16), .B(\Sudoku_DP/n141 ), .Y(\Sudoku_DP/N596 ) );
  NOR2X1 \Sudoku_DP/U589  ( .A(n16), .B(\Sudoku_DP/n140 ), .Y(\Sudoku_DP/N597 ) );
  NOR2X1 \Sudoku_DP/U588  ( .A(n16), .B(\Sudoku_DP/n139 ), .Y(\Sudoku_DP/N598 ) );
  NOR2X1 \Sudoku_DP/U587  ( .A(n16), .B(\Sudoku_DP/n144 ), .Y(\Sudoku_DP/N599 ) );
  NOR2X1 \Sudoku_DP/U586  ( .A(n16), .B(\Sudoku_DP/n143 ), .Y(\Sudoku_DP/N600 ) );
  NOR2X1 \Sudoku_DP/U585  ( .A(n16), .B(\Sudoku_DP/n142 ), .Y(\Sudoku_DP/N601 ) );
  NOR2X1 \Sudoku_DP/U584  ( .A(n16), .B(\Sudoku_DP/n153 ), .Y(\Sudoku_DP/N602 ) );
  NOR2X1 \Sudoku_DP/U583  ( .A(n16), .B(\Sudoku_DP/n152 ), .Y(\Sudoku_DP/N603 ) );
  NOR2X1 \Sudoku_DP/U582  ( .A(n16), .B(\Sudoku_DP/n151 ), .Y(\Sudoku_DP/N604 ) );
  NAND2X1 \Sudoku_DP/U581  ( .A(\Sudoku_DP/temp_fill_flag [0]), .B(n19), .Y(
        \Sudoku_DP/n513 ) );
  NAND2X1 \Sudoku_DP/U580  ( .A(\Sudoku_DP/temp_fill_flag [1]), .B(n24), .Y(
        \Sudoku_DP/n515 ) );
  NAND2X1 \Sudoku_DP/U579  ( .A(\Sudoku_DP/temp_fill_flag [2]), .B(n25), .Y(
        \Sudoku_DP/n516 ) );
  NAND2X1 \Sudoku_DP/U578  ( .A(\Sudoku_DP/temp_fill_flag [3]), .B(n25), .Y(
        \Sudoku_DP/n517 ) );
  NAND2X1 \Sudoku_DP/U577  ( .A(\Sudoku_DP/temp_fill_flag [4]), .B(n25), .Y(
        \Sudoku_DP/n518 ) );
  NAND2X1 \Sudoku_DP/U576  ( .A(\Sudoku_DP/temp_fill_flag [5]), .B(n25), .Y(
        \Sudoku_DP/n520 ) );
  NAND2X1 \Sudoku_DP/U575  ( .A(\Sudoku_DP/temp_fill_flag [6]), .B(n25), .Y(
        \Sudoku_DP/n524 ) );
  NAND2X1 \Sudoku_DP/U574  ( .A(\Sudoku_DP/temp_fill_flag [7]), .B(n24), .Y(
        \Sudoku_DP/n527 ) );
  NAND2X1 \Sudoku_DP/U573  ( .A(\Sudoku_DP/temp_fill_flag [8]), .B(n24), .Y(
        \Sudoku_DP/n530 ) );
  NAND2X1 \Sudoku_DP/U572  ( .A(\Sudoku_DP/temp_fill_flag [9]), .B(n22), .Y(
        \Sudoku_DP/n532 ) );
  NAND2X1 \Sudoku_DP/U571  ( .A(\Sudoku_DP/temp_fill_flag [10]), .B(n24), .Y(
        \Sudoku_DP/n533 ) );
  NAND2X1 \Sudoku_DP/U570  ( .A(\Sudoku_DP/temp_fill_flag [11]), .B(n24), .Y(
        \Sudoku_DP/n536 ) );
  NAND2X1 \Sudoku_DP/U569  ( .A(\Sudoku_DP/temp_fill_flag [12]), .B(n23), .Y(
        \Sudoku_DP/n539 ) );
  NAND2X1 \Sudoku_DP/U568  ( .A(\Sudoku_DP/temp_fill_flag [13]), .B(n23), .Y(
        \Sudoku_DP/n540 ) );
  NAND2X1 \Sudoku_DP/U567  ( .A(\Sudoku_DP/temp_fill_flag [14]), .B(n23), .Y(
        \Sudoku_DP/n541 ) );
  NAND2X1 \Sudoku_DP/U566  ( .A(\Sudoku_DP/temp_fill_flag [15]), .B(n23), .Y(
        \Sudoku_DP/n542 ) );
  NAND2X1 \Sudoku_DP/U565  ( .A(\Sudoku_DP/temp_solved ), .B(n23), .Y(
        \Sudoku_DP/n259 ) );
  NOR2X1 \Sudoku_DP/U564  ( .A(\Sudoku_DP/n220 ), .B(n16), .Y(\Sudoku_DP/n505 ) );
  OR2X1 \Sudoku_DP/U563  ( .A(n16), .B(\Sudoku_DP/n505 ), .Y(\Sudoku_DP/n491 )
         );
  NAND2X1 \Sudoku_DP/U562  ( .A(in_rand_setup[3]), .B(\Sudoku_DP/n505 ), .Y(
        \Sudoku_DP/n508 ) );
  NAND2X1 \Sudoku_DP/U561  ( .A(in_rand_setup[1]), .B(\Sudoku_DP/n227 ), .Y(
        \Sudoku_DP/n544 ) );
  NAND3X1 \Sudoku_DP/U560  ( .A(in_rand_setup[2]), .B(\Sudoku_DP/n229 ), .C(
        \Sudoku_DP/n504 ), .Y(\Sudoku_DP/n545 ) );
  OAI21X1 \Sudoku_DP/U559  ( .A(\Sudoku_DP/n508 ), .B(\Sudoku_DP/n544 ), .C(
        \Sudoku_DP/n545 ), .Y(\Sudoku_DP/n543 ) );
  OAI21X1 \Sudoku_DP/U558  ( .A(\Sudoku_DP/n85 ), .B(n27), .C(\Sudoku_DP/n213 ), .Y(\Sudoku_DP/n664 ) );
  XNOR2X1 \Sudoku_DP/U557  ( .A(\Sudoku_DP/n224 ), .B(in_rand_setup[2]), .Y(
        \Sudoku_DP/n506 ) );
  NAND2X1 \Sudoku_DP/U556  ( .A(\Sudoku_DP/n223 ), .B(\Sudoku_DP/n505 ), .Y(
        \Sudoku_DP/n493 ) );
  OAI21X1 \Sudoku_DP/U555  ( .A(\Sudoku_DP/n86 ), .B(n27), .C(\Sudoku_DP/n493 ), .Y(\Sudoku_DP/n663 ) );
  XNOR2X1 \Sudoku_DP/U554  ( .A(\Sudoku_DP/n228 ), .B(in_rand_setup[2]), .Y(
        \Sudoku_DP/n503 ) );
  XNOR2X1 \Sudoku_DP/U553  ( .A(\Sudoku_DP/n229 ), .B(in_rand_setup[2]), .Y(
        \Sudoku_DP/n502 ) );
  AOI22X1 \Sudoku_DP/U552  ( .A(\Sudoku_DP/n226 ), .B(\Sudoku_DP/n214 ), .C(
        \Sudoku_DP/n225 ), .D(\Sudoku_DP/n504 ), .Y(\Sudoku_DP/n492 ) );
  OAI21X1 \Sudoku_DP/U551  ( .A(\Sudoku_DP/n87 ), .B(n27), .C(\Sudoku_DP/n492 ), .Y(\Sudoku_DP/n662 ) );
  NAND3X1 \Sudoku_DP/U550  ( .A(n19), .B(\Sudoku_DP/n220 ), .C(
        out_set_diff_flag), .Y(\Sudoku_DP/n469 ) );
  NAND2X1 \Sudoku_DP/U549  ( .A(in_diff_cell_val[0]), .B(\Sudoku_DP/n257 ), 
        .Y(\Sudoku_DP/n521 ) );
  NOR2X1 \Sudoku_DP/U548  ( .A(\Sudoku_DP/n257 ), .B(in_diff_cell_val[0]), .Y(
        \Sudoku_DP/n523 ) );
  NOR2X1 \Sudoku_DP/U547  ( .A(\Sudoku_DP/n256 ), .B(\Sudoku_DP/n523 ), .Y(
        \Sudoku_DP/n463 ) );
  NAND2X1 \Sudoku_DP/U546  ( .A(in_diff_cell_val[1]), .B(in_diff_cell_val[0]), 
        .Y(\Sudoku_DP/n465 ) );
  NAND2X1 \Sudoku_DP/U545  ( .A(\Sudoku_DP/n463 ), .B(\Sudoku_DP/n465 ), .Y(
        \Sudoku_DP/n514 ) );
  NAND3X1 \Sudoku_DP/U544  ( .A(in_rand_B[2]), .B(\Sudoku_DP/n514 ), .C(
        in_rand_B[3]), .Y(\Sudoku_DP/n403 ) );
  OAI21X1 \Sudoku_DP/U543  ( .A(n11), .B(\Sudoku_DP/n403 ), .C(
        \Sudoku_DP/n542 ), .Y(\Sudoku_DP/n661 ) );
  NAND3X1 \Sudoku_DP/U542  ( .A(\Sudoku_DP/n514 ), .B(\Sudoku_DP/n247 ), .C(
        in_rand_B[3]), .Y(\Sudoku_DP/n410 ) );
  OAI21X1 \Sudoku_DP/U541  ( .A(n11), .B(\Sudoku_DP/n410 ), .C(
        \Sudoku_DP/n541 ), .Y(\Sudoku_DP/n660 ) );
  NAND3X1 \Sudoku_DP/U540  ( .A(\Sudoku_DP/n514 ), .B(\Sudoku_DP/n244 ), .C(
        in_rand_B[2]), .Y(\Sudoku_DP/n417 ) );
  OAI21X1 \Sudoku_DP/U539  ( .A(n11), .B(\Sudoku_DP/n417 ), .C(
        \Sudoku_DP/n540 ), .Y(\Sudoku_DP/n659 ) );
  NAND3X1 \Sudoku_DP/U538  ( .A(\Sudoku_DP/n247 ), .B(\Sudoku_DP/n244 ), .C(
        \Sudoku_DP/n514 ), .Y(\Sudoku_DP/n424 ) );
  OAI21X1 \Sudoku_DP/U537  ( .A(\Sudoku_DP/n469 ), .B(\Sudoku_DP/n424 ), .C(
        \Sudoku_DP/n539 ), .Y(\Sudoku_DP/n658 ) );
  NAND2X1 \Sudoku_DP/U536  ( .A(in_rand_B[0]), .B(\Sudoku_DP/n514 ), .Y(
        \Sudoku_DP/n537 ) );
  NAND3X1 \Sudoku_DP/U535  ( .A(\Sudoku_DP/n253 ), .B(\Sudoku_DP/n252 ), .C(
        \Sudoku_DP/n255 ), .Y(\Sudoku_DP/n538 ) );
  OAI21X1 \Sudoku_DP/U534  ( .A(\Sudoku_DP/n252 ), .B(\Sudoku_DP/n537 ), .C(
        \Sudoku_DP/n538 ), .Y(\Sudoku_DP/n433 ) );
  OAI21X1 \Sudoku_DP/U533  ( .A(\Sudoku_DP/n250 ), .B(n11), .C(
        \Sudoku_DP/n536 ), .Y(\Sudoku_DP/n657 ) );
  NAND2X1 \Sudoku_DP/U532  ( .A(\Sudoku_DP/n514 ), .B(\Sudoku_DP/n253 ), .Y(
        \Sudoku_DP/n534 ) );
  NAND3X1 \Sudoku_DP/U531  ( .A(\Sudoku_DP/n255 ), .B(\Sudoku_DP/n252 ), .C(
        in_rand_B[0]), .Y(\Sudoku_DP/n535 ) );
  OAI21X1 \Sudoku_DP/U530  ( .A(\Sudoku_DP/n252 ), .B(\Sudoku_DP/n534 ), .C(
        \Sudoku_DP/n535 ), .Y(\Sudoku_DP/n440 ) );
  OAI21X1 \Sudoku_DP/U529  ( .A(\Sudoku_DP/n251 ), .B(n11), .C(
        \Sudoku_DP/n533 ), .Y(\Sudoku_DP/n656 ) );
  OAI21X1 \Sudoku_DP/U528  ( .A(in_rand_B[1]), .B(\Sudoku_DP/n465 ), .C(
        \Sudoku_DP/n463 ), .Y(\Sudoku_DP/n531 ) );
  NAND2X1 \Sudoku_DP/U527  ( .A(in_rand_B[0]), .B(\Sudoku_DP/n531 ), .Y(
        \Sudoku_DP/n448 ) );
  OAI21X1 \Sudoku_DP/U526  ( .A(\Sudoku_DP/n469 ), .B(\Sudoku_DP/n448 ), .C(
        \Sudoku_DP/n532 ), .Y(\Sudoku_DP/n655 ) );
  NAND2X1 \Sudoku_DP/U525  ( .A(\Sudoku_DP/n531 ), .B(\Sudoku_DP/n253 ), .Y(
        \Sudoku_DP/n456 ) );
  OAI21X1 \Sudoku_DP/U524  ( .A(\Sudoku_DP/n469 ), .B(\Sudoku_DP/n456 ), .C(
        \Sudoku_DP/n530 ), .Y(\Sudoku_DP/n654 ) );
  NAND2X1 \Sudoku_DP/U523  ( .A(in_rand_A[3]), .B(\Sudoku_DP/n514 ), .Y(
        \Sudoku_DP/n528 ) );
  NAND3X1 \Sudoku_DP/U522  ( .A(\Sudoku_DP/n235 ), .B(\Sudoku_DP/n234 ), .C(
        \Sudoku_DP/n256 ), .Y(\Sudoku_DP/n529 ) );
  OAI21X1 \Sudoku_DP/U521  ( .A(\Sudoku_DP/n235 ), .B(\Sudoku_DP/n528 ), .C(
        \Sudoku_DP/n529 ), .Y(\Sudoku_DP/n468 ) );
  OAI21X1 \Sudoku_DP/U520  ( .A(\Sudoku_DP/n230 ), .B(n11), .C(
        \Sudoku_DP/n527 ), .Y(\Sudoku_DP/n653 ) );
  NAND2X1 \Sudoku_DP/U519  ( .A(\Sudoku_DP/n514 ), .B(\Sudoku_DP/n235 ), .Y(
        \Sudoku_DP/n525 ) );
  NAND3X1 \Sudoku_DP/U518  ( .A(\Sudoku_DP/n256 ), .B(\Sudoku_DP/n234 ), .C(
        in_rand_A[2]), .Y(\Sudoku_DP/n526 ) );
  OAI21X1 \Sudoku_DP/U517  ( .A(\Sudoku_DP/n234 ), .B(\Sudoku_DP/n525 ), .C(
        \Sudoku_DP/n526 ), .Y(\Sudoku_DP/n351 ) );
  OAI21X1 \Sudoku_DP/U516  ( .A(\Sudoku_DP/n231 ), .B(n11), .C(
        \Sudoku_DP/n524 ), .Y(\Sudoku_DP/n652 ) );
  OAI21X1 \Sudoku_DP/U515  ( .A(\Sudoku_DP/n254 ), .B(\Sudoku_DP/n523 ), .C(
        \Sudoku_DP/n234 ), .Y(\Sudoku_DP/n522 ) );
  NAND2X1 \Sudoku_DP/U514  ( .A(\Sudoku_DP/n521 ), .B(\Sudoku_DP/n522 ), .Y(
        \Sudoku_DP/n519 ) );
  NAND2X1 \Sudoku_DP/U513  ( .A(in_rand_A[2]), .B(\Sudoku_DP/n519 ), .Y(
        \Sudoku_DP/n358 ) );
  OAI21X1 \Sudoku_DP/U512  ( .A(\Sudoku_DP/n469 ), .B(\Sudoku_DP/n358 ), .C(
        \Sudoku_DP/n520 ), .Y(\Sudoku_DP/n651 ) );
  NAND2X1 \Sudoku_DP/U511  ( .A(\Sudoku_DP/n519 ), .B(\Sudoku_DP/n235 ), .Y(
        \Sudoku_DP/n365 ) );
  OAI21X1 \Sudoku_DP/U510  ( .A(\Sudoku_DP/n469 ), .B(\Sudoku_DP/n365 ), .C(
        \Sudoku_DP/n518 ), .Y(\Sudoku_DP/n650 ) );
  NAND3X1 \Sudoku_DP/U509  ( .A(in_rand_A[0]), .B(\Sudoku_DP/n514 ), .C(
        in_rand_A[1]), .Y(\Sudoku_DP/n373 ) );
  OAI21X1 \Sudoku_DP/U508  ( .A(\Sudoku_DP/n469 ), .B(\Sudoku_DP/n373 ), .C(
        \Sudoku_DP/n517 ), .Y(\Sudoku_DP/n649 ) );
  NAND3X1 \Sudoku_DP/U507  ( .A(\Sudoku_DP/n514 ), .B(\Sudoku_DP/n241 ), .C(
        in_rand_A[1]), .Y(\Sudoku_DP/n380 ) );
  OAI21X1 \Sudoku_DP/U506  ( .A(n11), .B(\Sudoku_DP/n380 ), .C(
        \Sudoku_DP/n516 ), .Y(\Sudoku_DP/n648 ) );
  NAND3X1 \Sudoku_DP/U505  ( .A(\Sudoku_DP/n514 ), .B(\Sudoku_DP/n238 ), .C(
        in_rand_A[0]), .Y(\Sudoku_DP/n387 ) );
  OAI21X1 \Sudoku_DP/U504  ( .A(n11), .B(\Sudoku_DP/n387 ), .C(
        \Sudoku_DP/n515 ), .Y(\Sudoku_DP/n647 ) );
  NAND3X1 \Sudoku_DP/U503  ( .A(\Sudoku_DP/n241 ), .B(\Sudoku_DP/n238 ), .C(
        \Sudoku_DP/n514 ), .Y(\Sudoku_DP/n394 ) );
  OAI21X1 \Sudoku_DP/U502  ( .A(n11), .B(\Sudoku_DP/n394 ), .C(
        \Sudoku_DP/n513 ), .Y(\Sudoku_DP/n646 ) );
  XOR2X1 \Sudoku_DP/U501  ( .A(in_rand_setup[3]), .B(in_rand_setup[1]), .Y(
        \Sudoku_DP/n512 ) );
  NAND3X1 \Sudoku_DP/U500  ( .A(\Sudoku_DP/n512 ), .B(\Sudoku_DP/n227 ), .C(
        \Sudoku_DP/n505 ), .Y(\Sudoku_DP/n496 ) );
  OAI21X1 \Sudoku_DP/U499  ( .A(\Sudoku_DP/n109 ), .B(n27), .C(
        \Sudoku_DP/n496 ), .Y(\Sudoku_DP/n645 ) );
  NAND2X1 \Sudoku_DP/U498  ( .A(in_rand_setup[2]), .B(\Sudoku_DP/n505 ), .Y(
        \Sudoku_DP/n495 ) );
  OAI21X1 \Sudoku_DP/U497  ( .A(\Sudoku_DP/n110 ), .B(n27), .C(
        \Sudoku_DP/n495 ), .Y(\Sudoku_DP/n644 ) );
  AOI22X1 \Sudoku_DP/U496  ( .A(\Sudoku_DP/n503 ), .B(\Sudoku_DP/n214 ), .C(
        \Sudoku_DP/n504 ), .D(\Sudoku_DP/n226 ), .Y(\Sudoku_DP/n494 ) );
  OAI21X1 \Sudoku_DP/U495  ( .A(\Sudoku_DP/n111 ), .B(n27), .C(
        \Sudoku_DP/n494 ), .Y(\Sudoku_DP/n643 ) );
  OAI21X1 \Sudoku_DP/U494  ( .A(\Sudoku_DP/n112 ), .B(n27), .C(
        \Sudoku_DP/n213 ), .Y(\Sudoku_DP/n642 ) );
  OAI21X1 \Sudoku_DP/U493  ( .A(\Sudoku_DP/n113 ), .B(n27), .C(
        \Sudoku_DP/n493 ), .Y(\Sudoku_DP/n641 ) );
  OAI21X1 \Sudoku_DP/U492  ( .A(\Sudoku_DP/n114 ), .B(n27), .C(
        \Sudoku_DP/n492 ), .Y(\Sudoku_DP/n640 ) );
  XOR2X1 \Sudoku_DP/U491  ( .A(in_rand_setup[3]), .B(in_rand_setup[0]), .Y(
        \Sudoku_DP/n511 ) );
  NAND3X1 \Sudoku_DP/U490  ( .A(\Sudoku_DP/n505 ), .B(\Sudoku_DP/n511 ), .C(
        in_rand_setup[2]), .Y(\Sudoku_DP/n501 ) );
  OAI21X1 \Sudoku_DP/U489  ( .A(\Sudoku_DP/n115 ), .B(n27), .C(
        \Sudoku_DP/n501 ), .Y(\Sudoku_DP/n639 ) );
  NAND2X1 \Sudoku_DP/U488  ( .A(\Sudoku_DP/n505 ), .B(\Sudoku_DP/n227 ), .Y(
        \Sudoku_DP/n500 ) );
  OAI21X1 \Sudoku_DP/U487  ( .A(\Sudoku_DP/n116 ), .B(n27), .C(
        \Sudoku_DP/n500 ), .Y(\Sudoku_DP/n638 ) );
  AOI22X1 \Sudoku_DP/U486  ( .A(\Sudoku_DP/n225 ), .B(\Sudoku_DP/n214 ), .C(
        \Sudoku_DP/n502 ), .D(\Sudoku_DP/n504 ), .Y(\Sudoku_DP/n499 ) );
  OAI21X1 \Sudoku_DP/U485  ( .A(\Sudoku_DP/n117 ), .B(n27), .C(
        \Sudoku_DP/n499 ), .Y(\Sudoku_DP/n637 ) );
  NAND2X1 \Sudoku_DP/U484  ( .A(in_rand_setup[0]), .B(in_rand_setup[2]), .Y(
        \Sudoku_DP/n509 ) );
  NAND3X1 \Sudoku_DP/U483  ( .A(\Sudoku_DP/n228 ), .B(\Sudoku_DP/n227 ), .C(
        \Sudoku_DP/n504 ), .Y(\Sudoku_DP/n510 ) );
  OAI21X1 \Sudoku_DP/U482  ( .A(\Sudoku_DP/n508 ), .B(\Sudoku_DP/n509 ), .C(
        \Sudoku_DP/n510 ), .Y(\Sudoku_DP/n507 ) );
  OAI21X1 \Sudoku_DP/U481  ( .A(\Sudoku_DP/n130 ), .B(n28), .C(
        \Sudoku_DP/n215 ), .Y(\Sudoku_DP/n636 ) );
  NAND2X1 \Sudoku_DP/U480  ( .A(\Sudoku_DP/n505 ), .B(\Sudoku_DP/n506 ), .Y(
        \Sudoku_DP/n498 ) );
  OAI21X1 \Sudoku_DP/U479  ( .A(\Sudoku_DP/n131 ), .B(n28), .C(
        \Sudoku_DP/n498 ), .Y(\Sudoku_DP/n635 ) );
  AOI22X1 \Sudoku_DP/U478  ( .A(\Sudoku_DP/n502 ), .B(\Sudoku_DP/n214 ), .C(
        \Sudoku_DP/n503 ), .D(\Sudoku_DP/n504 ), .Y(\Sudoku_DP/n497 ) );
  OAI21X1 \Sudoku_DP/U477  ( .A(\Sudoku_DP/n132 ), .B(n28), .C(
        \Sudoku_DP/n497 ), .Y(\Sudoku_DP/n634 ) );
  OAI21X1 \Sudoku_DP/U476  ( .A(\Sudoku_DP/n145 ), .B(n28), .C(
        \Sudoku_DP/n496 ), .Y(\Sudoku_DP/n633 ) );
  OAI21X1 \Sudoku_DP/U475  ( .A(\Sudoku_DP/n146 ), .B(n28), .C(
        \Sudoku_DP/n495 ), .Y(\Sudoku_DP/n632 ) );
  OAI21X1 \Sudoku_DP/U474  ( .A(\Sudoku_DP/n147 ), .B(n28), .C(
        \Sudoku_DP/n494 ), .Y(\Sudoku_DP/n631 ) );
  OAI21X1 \Sudoku_DP/U473  ( .A(\Sudoku_DP/n148 ), .B(n28), .C(
        \Sudoku_DP/n501 ), .Y(\Sudoku_DP/n630 ) );
  OAI21X1 \Sudoku_DP/U472  ( .A(\Sudoku_DP/n149 ), .B(n28), .C(
        \Sudoku_DP/n500 ), .Y(\Sudoku_DP/n629 ) );
  OAI21X1 \Sudoku_DP/U471  ( .A(\Sudoku_DP/n150 ), .B(n28), .C(
        \Sudoku_DP/n499 ), .Y(\Sudoku_DP/n628 ) );
  OAI21X1 \Sudoku_DP/U470  ( .A(\Sudoku_DP/n154 ), .B(n28), .C(
        \Sudoku_DP/n496 ), .Y(\Sudoku_DP/n627 ) );
  OAI21X1 \Sudoku_DP/U469  ( .A(\Sudoku_DP/n155 ), .B(n28), .C(
        \Sudoku_DP/n495 ), .Y(\Sudoku_DP/n626 ) );
  OAI21X1 \Sudoku_DP/U468  ( .A(\Sudoku_DP/n156 ), .B(n28), .C(
        \Sudoku_DP/n494 ), .Y(\Sudoku_DP/n625 ) );
  OAI21X1 \Sudoku_DP/U467  ( .A(\Sudoku_DP/n157 ), .B(n29), .C(
        \Sudoku_DP/n213 ), .Y(\Sudoku_DP/n624 ) );
  OAI21X1 \Sudoku_DP/U466  ( .A(\Sudoku_DP/n158 ), .B(n29), .C(
        \Sudoku_DP/n493 ), .Y(\Sudoku_DP/n623 ) );
  OAI21X1 \Sudoku_DP/U465  ( .A(\Sudoku_DP/n159 ), .B(n29), .C(
        \Sudoku_DP/n492 ), .Y(\Sudoku_DP/n622 ) );
  OAI21X1 \Sudoku_DP/U464  ( .A(\Sudoku_DP/n160 ), .B(n29), .C(
        \Sudoku_DP/n501 ), .Y(\Sudoku_DP/n621 ) );
  OAI21X1 \Sudoku_DP/U463  ( .A(\Sudoku_DP/n161 ), .B(n29), .C(
        \Sudoku_DP/n500 ), .Y(\Sudoku_DP/n620 ) );
  OAI21X1 \Sudoku_DP/U462  ( .A(\Sudoku_DP/n162 ), .B(n29), .C(
        \Sudoku_DP/n499 ), .Y(\Sudoku_DP/n619 ) );
  OAI21X1 \Sudoku_DP/U461  ( .A(\Sudoku_DP/n163 ), .B(n29), .C(
        \Sudoku_DP/n215 ), .Y(\Sudoku_DP/n618 ) );
  OAI21X1 \Sudoku_DP/U460  ( .A(\Sudoku_DP/n164 ), .B(n29), .C(
        \Sudoku_DP/n498 ), .Y(\Sudoku_DP/n617 ) );
  OAI21X1 \Sudoku_DP/U459  ( .A(\Sudoku_DP/n165 ), .B(n29), .C(
        \Sudoku_DP/n497 ), .Y(\Sudoku_DP/n616 ) );
  OAI21X1 \Sudoku_DP/U458  ( .A(\Sudoku_DP/n166 ), .B(n29), .C(
        \Sudoku_DP/n215 ), .Y(\Sudoku_DP/n615 ) );
  OAI21X1 \Sudoku_DP/U457  ( .A(\Sudoku_DP/n167 ), .B(n29), .C(
        \Sudoku_DP/n498 ), .Y(\Sudoku_DP/n614 ) );
  OAI21X1 \Sudoku_DP/U456  ( .A(\Sudoku_DP/n168 ), .B(n29), .C(
        \Sudoku_DP/n497 ), .Y(\Sudoku_DP/n613 ) );
  OAI21X1 \Sudoku_DP/U455  ( .A(\Sudoku_DP/n169 ), .B(n30), .C(
        \Sudoku_DP/n501 ), .Y(\Sudoku_DP/n612 ) );
  OAI21X1 \Sudoku_DP/U454  ( .A(\Sudoku_DP/n170 ), .B(n30), .C(
        \Sudoku_DP/n500 ), .Y(\Sudoku_DP/n611 ) );
  OAI21X1 \Sudoku_DP/U453  ( .A(\Sudoku_DP/n171 ), .B(n30), .C(
        \Sudoku_DP/n499 ), .Y(\Sudoku_DP/n610 ) );
  OAI21X1 \Sudoku_DP/U452  ( .A(\Sudoku_DP/n172 ), .B(n30), .C(
        \Sudoku_DP/n215 ), .Y(\Sudoku_DP/n609 ) );
  OAI21X1 \Sudoku_DP/U451  ( .A(\Sudoku_DP/n173 ), .B(n30), .C(
        \Sudoku_DP/n498 ), .Y(\Sudoku_DP/n608 ) );
  OAI21X1 \Sudoku_DP/U450  ( .A(\Sudoku_DP/n174 ), .B(n30), .C(
        \Sudoku_DP/n497 ), .Y(\Sudoku_DP/n607 ) );
  OAI21X1 \Sudoku_DP/U449  ( .A(\Sudoku_DP/n175 ), .B(n30), .C(
        \Sudoku_DP/n496 ), .Y(\Sudoku_DP/n606 ) );
  OAI21X1 \Sudoku_DP/U448  ( .A(\Sudoku_DP/n176 ), .B(n30), .C(
        \Sudoku_DP/n495 ), .Y(\Sudoku_DP/n605 ) );
  OAI21X1 \Sudoku_DP/U447  ( .A(\Sudoku_DP/n177 ), .B(n30), .C(
        \Sudoku_DP/n494 ), .Y(\Sudoku_DP/n604 ) );
  OAI21X1 \Sudoku_DP/U446  ( .A(\Sudoku_DP/n178 ), .B(n30), .C(
        \Sudoku_DP/n213 ), .Y(\Sudoku_DP/n603 ) );
  OAI21X1 \Sudoku_DP/U445  ( .A(\Sudoku_DP/n179 ), .B(n30), .C(
        \Sudoku_DP/n493 ), .Y(\Sudoku_DP/n602 ) );
  OAI21X1 \Sudoku_DP/U444  ( .A(\Sudoku_DP/n180 ), .B(n30), .C(
        \Sudoku_DP/n492 ), .Y(\Sudoku_DP/n601 ) );
  NAND3X1 \Sudoku_DP/U443  ( .A(\Sudoku_DP/n220 ), .B(\Sudoku_DP/n221 ), .C(
        n19), .Y(\Sudoku_DP/n488 ) );
  NAND2X1 \Sudoku_DP/U442  ( .A(out_row_flag), .B(\Sudoku_DP/n218 ), .Y(
        \Sudoku_DP/n490 ) );
  NAND2X1 \Sudoku_DP/U441  ( .A(n26), .B(\Sudoku_DP/n490 ), .Y(
        \Sudoku_DP/n489 ) );
  OAI22X1 \Sudoku_DP/U440  ( .A(\Sudoku_DP/n182 ), .B(\Sudoku_DP/n489 ), .C(
        \Sudoku_DP/n257 ), .D(\Sudoku_DP/n490 ), .Y(\Sudoku_DP/n600 ) );
  OAI22X1 \Sudoku_DP/U439  ( .A(\Sudoku_DP/n183 ), .B(\Sudoku_DP/n489 ), .C(
        \Sudoku_DP/n258 ), .D(\Sudoku_DP/n490 ), .Y(\Sudoku_DP/n599 ) );
  NOR2X1 \Sudoku_DP/U438  ( .A(\Sudoku_DP/n488 ), .B(out_row_flag), .Y(
        \Sudoku_DP/n338 ) );
  NAND2X1 \Sudoku_DP/U437  ( .A(out_col_flag), .B(\Sudoku_DP/n338 ), .Y(
        \Sudoku_DP/n487 ) );
  NAND2X1 \Sudoku_DP/U436  ( .A(n26), .B(\Sudoku_DP/n487 ), .Y(
        \Sudoku_DP/n486 ) );
  OAI22X1 \Sudoku_DP/U435  ( .A(\Sudoku_DP/n184 ), .B(\Sudoku_DP/n486 ), .C(
        \Sudoku_DP/n487 ), .D(\Sudoku_DP/n182 ), .Y(\Sudoku_DP/n598 ) );
  OAI22X1 \Sudoku_DP/U434  ( .A(\Sudoku_DP/n185 ), .B(\Sudoku_DP/n486 ), .C(
        \Sudoku_DP/n487 ), .D(\Sudoku_DP/n183 ), .Y(\Sudoku_DP/n597 ) );
  OAI22X1 \Sudoku_DP/U433  ( .A(\Sudoku_DP/n190 ), .B(\Sudoku_DP/n486 ), .C(
        \Sudoku_DP/n257 ), .D(\Sudoku_DP/n487 ), .Y(\Sudoku_DP/n596 ) );
  OAI22X1 \Sudoku_DP/U432  ( .A(\Sudoku_DP/n191 ), .B(\Sudoku_DP/n486 ), .C(
        \Sudoku_DP/n258 ), .D(\Sudoku_DP/n487 ), .Y(\Sudoku_DP/n595 ) );
  NAND2X1 \Sudoku_DP/U431  ( .A(\Sudoku_DP/current_cell [1]), .B(
        \Sudoku_DP/n191 ), .Y(\Sudoku_DP/n441 ) );
  NAND2X1 \Sudoku_DP/U430  ( .A(\Sudoku_DP/n191 ), .B(\Sudoku_DP/n190 ), .Y(
        \Sudoku_DP/n457 ) );
  NAND2X1 \Sudoku_DP/U429  ( .A(\Sudoku_DP/current_cell [0]), .B(
        \Sudoku_DP/n190 ), .Y(\Sudoku_DP/n449 ) );
  OAI22X1 \Sudoku_DP/U428  ( .A(\Sudoku_DP/n457 ), .B(
        \Sudoku_DP/temp_fill_flag [4]), .C(\Sudoku_DP/n449 ), .D(
        \Sudoku_DP/temp_fill_flag [5]), .Y(\Sudoku_DP/n485 ) );
  OAI21X1 \Sudoku_DP/U427  ( .A(\Sudoku_DP/temp_fill_flag [6]), .B(
        \Sudoku_DP/n441 ), .C(\Sudoku_DP/n101 ), .Y(\Sudoku_DP/n480 ) );
  NAND2X1 \Sudoku_DP/U426  ( .A(\Sudoku_DP/current_cell [0]), .B(
        \Sudoku_DP/current_cell [1]), .Y(\Sudoku_DP/n470 ) );
  OAI21X1 \Sudoku_DP/U425  ( .A(\Sudoku_DP/temp_fill_flag [7]), .B(
        \Sudoku_DP/n470 ), .C(\Sudoku_DP/current_cell [2]), .Y(
        \Sudoku_DP/n481 ) );
  OAI21X1 \Sudoku_DP/U424  ( .A(\Sudoku_DP/n457 ), .B(
        \Sudoku_DP/temp_fill_flag [0]), .C(\Sudoku_DP/n185 ), .Y(
        \Sudoku_DP/n484 ) );
  OAI21X1 \Sudoku_DP/U423  ( .A(\Sudoku_DP/temp_fill_flag [1]), .B(
        \Sudoku_DP/n449 ), .C(\Sudoku_DP/n107 ), .Y(\Sudoku_DP/n482 ) );
  OAI22X1 \Sudoku_DP/U422  ( .A(\Sudoku_DP/temp_fill_flag [3]), .B(
        \Sudoku_DP/n470 ), .C(\Sudoku_DP/temp_fill_flag [2]), .D(
        \Sudoku_DP/n441 ), .Y(\Sudoku_DP/n483 ) );
  OAI22X1 \Sudoku_DP/U421  ( .A(\Sudoku_DP/n480 ), .B(\Sudoku_DP/n481 ), .C(
        \Sudoku_DP/n482 ), .D(\Sudoku_DP/n483 ), .Y(\Sudoku_DP/n472 ) );
  OAI22X1 \Sudoku_DP/U420  ( .A(\Sudoku_DP/n457 ), .B(
        \Sudoku_DP/temp_fill_flag [12]), .C(\Sudoku_DP/n449 ), .D(
        \Sudoku_DP/temp_fill_flag [13]), .Y(\Sudoku_DP/n479 ) );
  OAI21X1 \Sudoku_DP/U419  ( .A(\Sudoku_DP/temp_fill_flag [14]), .B(
        \Sudoku_DP/n441 ), .C(\Sudoku_DP/n91 ), .Y(\Sudoku_DP/n474 ) );
  OAI21X1 \Sudoku_DP/U418  ( .A(\Sudoku_DP/temp_fill_flag [15]), .B(
        \Sudoku_DP/n470 ), .C(\Sudoku_DP/current_cell [2]), .Y(
        \Sudoku_DP/n475 ) );
  OAI21X1 \Sudoku_DP/U417  ( .A(\Sudoku_DP/n457 ), .B(
        \Sudoku_DP/temp_fill_flag [8]), .C(\Sudoku_DP/n185 ), .Y(
        \Sudoku_DP/n478 ) );
  OAI21X1 \Sudoku_DP/U416  ( .A(\Sudoku_DP/temp_fill_flag [9]), .B(
        \Sudoku_DP/n449 ), .C(\Sudoku_DP/n97 ), .Y(\Sudoku_DP/n476 ) );
  OAI22X1 \Sudoku_DP/U415  ( .A(\Sudoku_DP/temp_fill_flag [11]), .B(
        \Sudoku_DP/n470 ), .C(\Sudoku_DP/temp_fill_flag [10]), .D(
        \Sudoku_DP/n441 ), .Y(\Sudoku_DP/n477 ) );
  OAI22X1 \Sudoku_DP/U414  ( .A(\Sudoku_DP/n474 ), .B(\Sudoku_DP/n475 ), .C(
        \Sudoku_DP/n476 ), .D(\Sudoku_DP/n477 ), .Y(\Sudoku_DP/n473 ) );
  AOI22X1 \Sudoku_DP/U413  ( .A(\Sudoku_DP/n472 ), .B(\Sudoku_DP/n184 ), .C(
        \Sudoku_DP/current_cell [3]), .D(\Sudoku_DP/n473 ), .Y(
        \Sudoku_DP/n471 ) );
  NAND3X1 \Sudoku_DP/U412  ( .A(\Sudoku_DP/n338 ), .B(\Sudoku_DP/n222 ), .C(
        out_val_flag), .Y(\Sudoku_DP/n462 ) );
  NOR2X1 \Sudoku_DP/U411  ( .A(\Sudoku_DP/n88 ), .B(\Sudoku_DP/n462 ), .Y(
        \Sudoku_DP/n458 ) );
  AOI22X1 \Sudoku_DP/U410  ( .A(\Sudoku_DP/n350 ), .B(\Sudoku_DP/n186 ), .C(
        n12), .D(\Sudoku_DP/n468 ), .Y(\Sudoku_DP/n467 ) );
  NAND2X1 \Sudoku_DP/U409  ( .A(\Sudoku_DP/n467 ), .B(n22), .Y(
        \Sudoku_DP/n459 ) );
  AOI22X1 \Sudoku_DP/U407  ( .A(\Sudoku_DP/n461 ), .B(
        \Sudoku_DP/temp_real_board_7 [0]), .C(n9), .D(\Sudoku_DP/n459 ), .Y(
        \Sudoku_DP/n466 ) );
  OAI21X1 \Sudoku_DP/U406  ( .A(\Sudoku_DP/n120 ), .B(\Sudoku_DP/n459 ), .C(
        \Sudoku_DP/n466 ), .Y(\Sudoku_DP/n594 ) );
  AOI22X1 \Sudoku_DP/U404  ( .A(\Sudoku_DP/n461 ), .B(
        \Sudoku_DP/temp_real_board_7 [2]), .C(n8), .D(\Sudoku_DP/n459 ), .Y(
        \Sudoku_DP/n464 ) );
  OAI21X1 \Sudoku_DP/U403  ( .A(\Sudoku_DP/n118 ), .B(\Sudoku_DP/n459 ), .C(
        \Sudoku_DP/n464 ), .Y(\Sudoku_DP/n593 ) );
  AOI22X1 \Sudoku_DP/U401  ( .A(\Sudoku_DP/n461 ), .B(
        \Sudoku_DP/temp_real_board_7 [1]), .C(n7), .D(\Sudoku_DP/n459 ), .Y(
        \Sudoku_DP/n460 ) );
  OAI21X1 \Sudoku_DP/U400  ( .A(\Sudoku_DP/n119 ), .B(\Sudoku_DP/n459 ), .C(
        \Sudoku_DP/n460 ), .Y(\Sudoku_DP/n592 ) );
  AOI22X1 \Sudoku_DP/U399  ( .A(\Sudoku_DP/n432 ), .B(\Sudoku_DP/n188 ), .C(
        \Sudoku_DP/n249 ), .D(n10), .Y(\Sudoku_DP/n455 ) );
  NAND2X1 \Sudoku_DP/U398  ( .A(\Sudoku_DP/n455 ), .B(n22), .Y(
        \Sudoku_DP/n450 ) );
  AOI22X1 \Sudoku_DP/U397  ( .A(\Sudoku_DP/n452 ), .B(
        \Sudoku_DP/temp_real_board_8 [0]), .C(n9), .D(\Sudoku_DP/n450 ), .Y(
        \Sudoku_DP/n454 ) );
  OAI21X1 \Sudoku_DP/U396  ( .A(\Sudoku_DP/n123 ), .B(\Sudoku_DP/n450 ), .C(
        \Sudoku_DP/n454 ), .Y(\Sudoku_DP/n591 ) );
  AOI22X1 \Sudoku_DP/U395  ( .A(\Sudoku_DP/n452 ), .B(
        \Sudoku_DP/temp_real_board_8 [2]), .C(n8), .D(\Sudoku_DP/n450 ), .Y(
        \Sudoku_DP/n453 ) );
  OAI21X1 \Sudoku_DP/U394  ( .A(\Sudoku_DP/n121 ), .B(\Sudoku_DP/n450 ), .C(
        \Sudoku_DP/n453 ), .Y(\Sudoku_DP/n590 ) );
  AOI22X1 \Sudoku_DP/U393  ( .A(\Sudoku_DP/n452 ), .B(
        \Sudoku_DP/temp_real_board_8 [1]), .C(n7), .D(\Sudoku_DP/n450 ), .Y(
        \Sudoku_DP/n451 ) );
  OAI21X1 \Sudoku_DP/U392  ( .A(\Sudoku_DP/n122 ), .B(\Sudoku_DP/n450 ), .C(
        \Sudoku_DP/n451 ), .Y(\Sudoku_DP/n589 ) );
  AOI22X1 \Sudoku_DP/U391  ( .A(\Sudoku_DP/n432 ), .B(\Sudoku_DP/n189 ), .C(
        \Sudoku_DP/n248 ), .D(n10), .Y(\Sudoku_DP/n447 ) );
  NAND2X1 \Sudoku_DP/U390  ( .A(\Sudoku_DP/n447 ), .B(n21), .Y(
        \Sudoku_DP/n442 ) );
  AOI22X1 \Sudoku_DP/U389  ( .A(\Sudoku_DP/n444 ), .B(
        \Sudoku_DP/temp_real_board_9 [0]), .C(n9), .D(\Sudoku_DP/n442 ), .Y(
        \Sudoku_DP/n446 ) );
  OAI21X1 \Sudoku_DP/U388  ( .A(\Sudoku_DP/n126 ), .B(\Sudoku_DP/n442 ), .C(
        \Sudoku_DP/n446 ), .Y(\Sudoku_DP/n588 ) );
  AOI22X1 \Sudoku_DP/U387  ( .A(\Sudoku_DP/n444 ), .B(
        \Sudoku_DP/temp_real_board_9 [2]), .C(n8), .D(\Sudoku_DP/n442 ), .Y(
        \Sudoku_DP/n445 ) );
  OAI21X1 \Sudoku_DP/U386  ( .A(\Sudoku_DP/n124 ), .B(\Sudoku_DP/n442 ), .C(
        \Sudoku_DP/n445 ), .Y(\Sudoku_DP/n587 ) );
  AOI22X1 \Sudoku_DP/U385  ( .A(\Sudoku_DP/n444 ), .B(
        \Sudoku_DP/temp_real_board_9 [1]), .C(n7), .D(\Sudoku_DP/n442 ), .Y(
        \Sudoku_DP/n443 ) );
  OAI21X1 \Sudoku_DP/U384  ( .A(\Sudoku_DP/n125 ), .B(\Sudoku_DP/n442 ), .C(
        \Sudoku_DP/n443 ), .Y(\Sudoku_DP/n586 ) );
  AOI22X1 \Sudoku_DP/U383  ( .A(\Sudoku_DP/n432 ), .B(\Sudoku_DP/n187 ), .C(
        n12), .D(\Sudoku_DP/n440 ), .Y(\Sudoku_DP/n439 ) );
  NAND2X1 \Sudoku_DP/U382  ( .A(\Sudoku_DP/n439 ), .B(n21), .Y(
        \Sudoku_DP/n434 ) );
  AOI22X1 \Sudoku_DP/U381  ( .A(\Sudoku_DP/n436 ), .B(
        \Sudoku_DP/temp_real_board_10 [0]), .C(n9), .D(\Sudoku_DP/n434 ), .Y(
        \Sudoku_DP/n438 ) );
  OAI21X1 \Sudoku_DP/U380  ( .A(\Sudoku_DP/n129 ), .B(\Sudoku_DP/n434 ), .C(
        \Sudoku_DP/n438 ), .Y(\Sudoku_DP/n585 ) );
  AOI22X1 \Sudoku_DP/U379  ( .A(\Sudoku_DP/n436 ), .B(
        \Sudoku_DP/temp_real_board_10 [2]), .C(n8), .D(\Sudoku_DP/n434 ), .Y(
        \Sudoku_DP/n437 ) );
  OAI21X1 \Sudoku_DP/U378  ( .A(\Sudoku_DP/n127 ), .B(\Sudoku_DP/n434 ), .C(
        \Sudoku_DP/n437 ), .Y(\Sudoku_DP/n584 ) );
  AOI22X1 \Sudoku_DP/U377  ( .A(\Sudoku_DP/n436 ), .B(
        \Sudoku_DP/temp_real_board_10 [1]), .C(n7), .D(\Sudoku_DP/n434 ), .Y(
        \Sudoku_DP/n435 ) );
  OAI21X1 \Sudoku_DP/U376  ( .A(\Sudoku_DP/n128 ), .B(\Sudoku_DP/n434 ), .C(
        \Sudoku_DP/n435 ), .Y(\Sudoku_DP/n583 ) );
  AOI22X1 \Sudoku_DP/U375  ( .A(\Sudoku_DP/n432 ), .B(\Sudoku_DP/n186 ), .C(
        n12), .D(\Sudoku_DP/n433 ), .Y(\Sudoku_DP/n431 ) );
  NAND2X1 \Sudoku_DP/U374  ( .A(\Sudoku_DP/n431 ), .B(n21), .Y(
        \Sudoku_DP/n426 ) );
  AOI22X1 \Sudoku_DP/U373  ( .A(\Sudoku_DP/n428 ), .B(
        \Sudoku_DP/temp_real_board_11 [0]), .C(n9), .D(\Sudoku_DP/n426 ), .Y(
        \Sudoku_DP/n430 ) );
  OAI21X1 \Sudoku_DP/U372  ( .A(\Sudoku_DP/n135 ), .B(\Sudoku_DP/n426 ), .C(
        \Sudoku_DP/n430 ), .Y(\Sudoku_DP/n582 ) );
  AOI22X1 \Sudoku_DP/U371  ( .A(\Sudoku_DP/n428 ), .B(
        \Sudoku_DP/temp_real_board_11 [2]), .C(n8), .D(\Sudoku_DP/n426 ), .Y(
        \Sudoku_DP/n429 ) );
  OAI21X1 \Sudoku_DP/U370  ( .A(\Sudoku_DP/n133 ), .B(\Sudoku_DP/n426 ), .C(
        \Sudoku_DP/n429 ), .Y(\Sudoku_DP/n581 ) );
  AOI22X1 \Sudoku_DP/U369  ( .A(\Sudoku_DP/n428 ), .B(
        \Sudoku_DP/temp_real_board_11 [1]), .C(n7), .D(\Sudoku_DP/n426 ), .Y(
        \Sudoku_DP/n427 ) );
  OAI21X1 \Sudoku_DP/U368  ( .A(\Sudoku_DP/n134 ), .B(\Sudoku_DP/n426 ), .C(
        \Sudoku_DP/n427 ), .Y(\Sudoku_DP/n580 ) );
  AOI22X1 \Sudoku_DP/U367  ( .A(\Sudoku_DP/n402 ), .B(\Sudoku_DP/n188 ), .C(
        \Sudoku_DP/n243 ), .D(n10), .Y(\Sudoku_DP/n423 ) );
  NAND2X1 \Sudoku_DP/U366  ( .A(\Sudoku_DP/n423 ), .B(n21), .Y(
        \Sudoku_DP/n418 ) );
  AOI22X1 \Sudoku_DP/U365  ( .A(\Sudoku_DP/n420 ), .B(
        \Sudoku_DP/temp_real_board_12 [0]), .C(n9), .D(\Sudoku_DP/n418 ), .Y(
        \Sudoku_DP/n422 ) );
  OAI21X1 \Sudoku_DP/U364  ( .A(\Sudoku_DP/n138 ), .B(\Sudoku_DP/n418 ), .C(
        \Sudoku_DP/n422 ), .Y(\Sudoku_DP/n579 ) );
  AOI22X1 \Sudoku_DP/U363  ( .A(\Sudoku_DP/n420 ), .B(
        \Sudoku_DP/temp_real_board_12 [2]), .C(n8), .D(\Sudoku_DP/n418 ), .Y(
        \Sudoku_DP/n421 ) );
  OAI21X1 \Sudoku_DP/U362  ( .A(\Sudoku_DP/n136 ), .B(\Sudoku_DP/n418 ), .C(
        \Sudoku_DP/n421 ), .Y(\Sudoku_DP/n578 ) );
  AOI22X1 \Sudoku_DP/U361  ( .A(\Sudoku_DP/n420 ), .B(
        \Sudoku_DP/temp_real_board_12 [1]), .C(n7), .D(\Sudoku_DP/n418 ), .Y(
        \Sudoku_DP/n419 ) );
  OAI21X1 \Sudoku_DP/U360  ( .A(\Sudoku_DP/n137 ), .B(\Sudoku_DP/n418 ), .C(
        \Sudoku_DP/n419 ), .Y(\Sudoku_DP/n577 ) );
  AOI22X1 \Sudoku_DP/U359  ( .A(\Sudoku_DP/n402 ), .B(\Sudoku_DP/n189 ), .C(
        \Sudoku_DP/n242 ), .D(n10), .Y(\Sudoku_DP/n416 ) );
  NAND2X1 \Sudoku_DP/U358  ( .A(\Sudoku_DP/n416 ), .B(n21), .Y(
        \Sudoku_DP/n411 ) );
  AOI22X1 \Sudoku_DP/U357  ( .A(\Sudoku_DP/n413 ), .B(
        \Sudoku_DP/temp_real_board_13 [0]), .C(n9), .D(\Sudoku_DP/n411 ), .Y(
        \Sudoku_DP/n415 ) );
  OAI21X1 \Sudoku_DP/U356  ( .A(\Sudoku_DP/n141 ), .B(\Sudoku_DP/n411 ), .C(
        \Sudoku_DP/n415 ), .Y(\Sudoku_DP/n576 ) );
  AOI22X1 \Sudoku_DP/U355  ( .A(\Sudoku_DP/n413 ), .B(
        \Sudoku_DP/temp_real_board_13 [2]), .C(n8), .D(\Sudoku_DP/n411 ), .Y(
        \Sudoku_DP/n414 ) );
  OAI21X1 \Sudoku_DP/U354  ( .A(\Sudoku_DP/n139 ), .B(\Sudoku_DP/n411 ), .C(
        \Sudoku_DP/n414 ), .Y(\Sudoku_DP/n575 ) );
  AOI22X1 \Sudoku_DP/U353  ( .A(\Sudoku_DP/n413 ), .B(
        \Sudoku_DP/temp_real_board_13 [1]), .C(n7), .D(\Sudoku_DP/n411 ), .Y(
        \Sudoku_DP/n412 ) );
  OAI21X1 \Sudoku_DP/U352  ( .A(\Sudoku_DP/n140 ), .B(\Sudoku_DP/n411 ), .C(
        \Sudoku_DP/n412 ), .Y(\Sudoku_DP/n574 ) );
  AOI22X1 \Sudoku_DP/U351  ( .A(\Sudoku_DP/n402 ), .B(\Sudoku_DP/n187 ), .C(
        \Sudoku_DP/n245 ), .D(n10), .Y(\Sudoku_DP/n409 ) );
  NAND2X1 \Sudoku_DP/U350  ( .A(\Sudoku_DP/n409 ), .B(n20), .Y(
        \Sudoku_DP/n404 ) );
  AOI22X1 \Sudoku_DP/U349  ( .A(\Sudoku_DP/n406 ), .B(
        \Sudoku_DP/temp_real_board_14 [0]), .C(n9), .D(\Sudoku_DP/n404 ), .Y(
        \Sudoku_DP/n408 ) );
  OAI21X1 \Sudoku_DP/U348  ( .A(\Sudoku_DP/n144 ), .B(\Sudoku_DP/n404 ), .C(
        \Sudoku_DP/n408 ), .Y(\Sudoku_DP/n573 ) );
  AOI22X1 \Sudoku_DP/U347  ( .A(\Sudoku_DP/n406 ), .B(
        \Sudoku_DP/temp_real_board_14 [2]), .C(n8), .D(\Sudoku_DP/n404 ), .Y(
        \Sudoku_DP/n407 ) );
  OAI21X1 \Sudoku_DP/U346  ( .A(\Sudoku_DP/n142 ), .B(\Sudoku_DP/n404 ), .C(
        \Sudoku_DP/n407 ), .Y(\Sudoku_DP/n572 ) );
  AOI22X1 \Sudoku_DP/U345  ( .A(\Sudoku_DP/n406 ), .B(
        \Sudoku_DP/temp_real_board_14 [1]), .C(n7), .D(\Sudoku_DP/n404 ), .Y(
        \Sudoku_DP/n405 ) );
  OAI21X1 \Sudoku_DP/U344  ( .A(\Sudoku_DP/n143 ), .B(\Sudoku_DP/n404 ), .C(
        \Sudoku_DP/n405 ), .Y(\Sudoku_DP/n571 ) );
  AOI22X1 \Sudoku_DP/U343  ( .A(\Sudoku_DP/n402 ), .B(\Sudoku_DP/n186 ), .C(
        \Sudoku_DP/n246 ), .D(n10), .Y(\Sudoku_DP/n401 ) );
  NAND2X1 \Sudoku_DP/U342  ( .A(\Sudoku_DP/n401 ), .B(n20), .Y(
        \Sudoku_DP/n396 ) );
  AOI22X1 \Sudoku_DP/U341  ( .A(\Sudoku_DP/n398 ), .B(
        \Sudoku_DP/temp_real_board_15 [0]), .C(n9), .D(\Sudoku_DP/n396 ), .Y(
        \Sudoku_DP/n400 ) );
  OAI21X1 \Sudoku_DP/U340  ( .A(\Sudoku_DP/n153 ), .B(\Sudoku_DP/n396 ), .C(
        \Sudoku_DP/n400 ), .Y(\Sudoku_DP/n570 ) );
  AOI22X1 \Sudoku_DP/U339  ( .A(\Sudoku_DP/n398 ), .B(
        \Sudoku_DP/temp_real_board_15 [2]), .C(n8), .D(\Sudoku_DP/n396 ), .Y(
        \Sudoku_DP/n399 ) );
  OAI21X1 \Sudoku_DP/U338  ( .A(\Sudoku_DP/n151 ), .B(\Sudoku_DP/n396 ), .C(
        \Sudoku_DP/n399 ), .Y(\Sudoku_DP/n569 ) );
  AOI22X1 \Sudoku_DP/U337  ( .A(\Sudoku_DP/n398 ), .B(
        \Sudoku_DP/temp_real_board_15 [1]), .C(n7), .D(\Sudoku_DP/n396 ), .Y(
        \Sudoku_DP/n397 ) );
  OAI21X1 \Sudoku_DP/U336  ( .A(\Sudoku_DP/n152 ), .B(\Sudoku_DP/n396 ), .C(
        \Sudoku_DP/n397 ), .Y(\Sudoku_DP/n568 ) );
  AOI22X1 \Sudoku_DP/U335  ( .A(\Sudoku_DP/n372 ), .B(\Sudoku_DP/n188 ), .C(
        \Sudoku_DP/n237 ), .D(n12), .Y(\Sudoku_DP/n393 ) );
  NAND2X1 \Sudoku_DP/U334  ( .A(\Sudoku_DP/n393 ), .B(n22), .Y(
        \Sudoku_DP/n388 ) );
  AOI22X1 \Sudoku_DP/U333  ( .A(\Sudoku_DP/n390 ), .B(
        \Sudoku_DP/temp_real_board_0 [2]), .C(n8), .D(\Sudoku_DP/n388 ), .Y(
        \Sudoku_DP/n392 ) );
  OAI21X1 \Sudoku_DP/U332  ( .A(\Sudoku_DP/n192 ), .B(\Sudoku_DP/n388 ), .C(
        \Sudoku_DP/n392 ), .Y(\Sudoku_DP/n567 ) );
  AOI22X1 \Sudoku_DP/U331  ( .A(\Sudoku_DP/n390 ), .B(
        \Sudoku_DP/temp_real_board_0 [1]), .C(n7), .D(\Sudoku_DP/n388 ), .Y(
        \Sudoku_DP/n391 ) );
  OAI21X1 \Sudoku_DP/U330  ( .A(\Sudoku_DP/n193 ), .B(\Sudoku_DP/n388 ), .C(
        \Sudoku_DP/n391 ), .Y(\Sudoku_DP/n566 ) );
  AOI22X1 \Sudoku_DP/U329  ( .A(\Sudoku_DP/n390 ), .B(
        \Sudoku_DP/temp_real_board_0 [0]), .C(n9), .D(\Sudoku_DP/n388 ), .Y(
        \Sudoku_DP/n389 ) );
  OAI21X1 \Sudoku_DP/U328  ( .A(\Sudoku_DP/n194 ), .B(\Sudoku_DP/n388 ), .C(
        \Sudoku_DP/n389 ), .Y(\Sudoku_DP/n565 ) );
  AOI22X1 \Sudoku_DP/U327  ( .A(\Sudoku_DP/n372 ), .B(\Sudoku_DP/n189 ), .C(
        \Sudoku_DP/n236 ), .D(n10), .Y(\Sudoku_DP/n386 ) );
  NAND2X1 \Sudoku_DP/U326  ( .A(\Sudoku_DP/n386 ), .B(n20), .Y(
        \Sudoku_DP/n381 ) );
  AOI22X1 \Sudoku_DP/U325  ( .A(\Sudoku_DP/n383 ), .B(
        \Sudoku_DP/temp_real_board_1 [2]), .C(n8), .D(\Sudoku_DP/n381 ), .Y(
        \Sudoku_DP/n385 ) );
  OAI21X1 \Sudoku_DP/U324  ( .A(\Sudoku_DP/n195 ), .B(\Sudoku_DP/n381 ), .C(
        \Sudoku_DP/n385 ), .Y(\Sudoku_DP/n564 ) );
  AOI22X1 \Sudoku_DP/U323  ( .A(\Sudoku_DP/n383 ), .B(
        \Sudoku_DP/temp_real_board_1 [1]), .C(n7), .D(\Sudoku_DP/n381 ), .Y(
        \Sudoku_DP/n384 ) );
  OAI21X1 \Sudoku_DP/U322  ( .A(\Sudoku_DP/n196 ), .B(\Sudoku_DP/n381 ), .C(
        \Sudoku_DP/n384 ), .Y(\Sudoku_DP/n563 ) );
  AOI22X1 \Sudoku_DP/U321  ( .A(\Sudoku_DP/n383 ), .B(
        \Sudoku_DP/temp_real_board_1 [0]), .C(n9), .D(\Sudoku_DP/n381 ), .Y(
        \Sudoku_DP/n382 ) );
  OAI21X1 \Sudoku_DP/U320  ( .A(\Sudoku_DP/n197 ), .B(\Sudoku_DP/n381 ), .C(
        \Sudoku_DP/n382 ), .Y(\Sudoku_DP/n562 ) );
  AOI22X1 \Sudoku_DP/U319  ( .A(\Sudoku_DP/n372 ), .B(\Sudoku_DP/n187 ), .C(
        \Sudoku_DP/n239 ), .D(n10), .Y(\Sudoku_DP/n379 ) );
  NAND2X1 \Sudoku_DP/U318  ( .A(\Sudoku_DP/n379 ), .B(n20), .Y(
        \Sudoku_DP/n374 ) );
  AOI22X1 \Sudoku_DP/U317  ( .A(\Sudoku_DP/n376 ), .B(
        \Sudoku_DP/temp_real_board_2 [2]), .C(n8), .D(\Sudoku_DP/n374 ), .Y(
        \Sudoku_DP/n378 ) );
  OAI21X1 \Sudoku_DP/U316  ( .A(\Sudoku_DP/n198 ), .B(\Sudoku_DP/n374 ), .C(
        \Sudoku_DP/n378 ), .Y(\Sudoku_DP/n561 ) );
  AOI22X1 \Sudoku_DP/U315  ( .A(\Sudoku_DP/n376 ), .B(
        \Sudoku_DP/temp_real_board_2 [1]), .C(n7), .D(\Sudoku_DP/n374 ), .Y(
        \Sudoku_DP/n377 ) );
  OAI21X1 \Sudoku_DP/U314  ( .A(\Sudoku_DP/n199 ), .B(\Sudoku_DP/n374 ), .C(
        \Sudoku_DP/n377 ), .Y(\Sudoku_DP/n560 ) );
  AOI22X1 \Sudoku_DP/U313  ( .A(\Sudoku_DP/n376 ), .B(
        \Sudoku_DP/temp_real_board_2 [0]), .C(n9), .D(\Sudoku_DP/n374 ), .Y(
        \Sudoku_DP/n375 ) );
  OAI21X1 \Sudoku_DP/U312  ( .A(\Sudoku_DP/n200 ), .B(\Sudoku_DP/n374 ), .C(
        \Sudoku_DP/n375 ), .Y(\Sudoku_DP/n559 ) );
  AOI22X1 \Sudoku_DP/U311  ( .A(\Sudoku_DP/n372 ), .B(\Sudoku_DP/n186 ), .C(
        \Sudoku_DP/n240 ), .D(n10), .Y(\Sudoku_DP/n371 ) );
  NAND2X1 \Sudoku_DP/U310  ( .A(\Sudoku_DP/n371 ), .B(n20), .Y(
        \Sudoku_DP/n366 ) );
  AOI22X1 \Sudoku_DP/U309  ( .A(\Sudoku_DP/n368 ), .B(
        \Sudoku_DP/temp_real_board_3 [2]), .C(n8), .D(\Sudoku_DP/n366 ), .Y(
        \Sudoku_DP/n370 ) );
  OAI21X1 \Sudoku_DP/U308  ( .A(\Sudoku_DP/n201 ), .B(\Sudoku_DP/n366 ), .C(
        \Sudoku_DP/n370 ), .Y(\Sudoku_DP/n558 ) );
  AOI22X1 \Sudoku_DP/U307  ( .A(\Sudoku_DP/n368 ), .B(
        \Sudoku_DP/temp_real_board_3 [1]), .C(n7), .D(\Sudoku_DP/n366 ), .Y(
        \Sudoku_DP/n369 ) );
  OAI21X1 \Sudoku_DP/U306  ( .A(\Sudoku_DP/n202 ), .B(\Sudoku_DP/n366 ), .C(
        \Sudoku_DP/n369 ), .Y(\Sudoku_DP/n557 ) );
  AOI22X1 \Sudoku_DP/U305  ( .A(\Sudoku_DP/n368 ), .B(
        \Sudoku_DP/temp_real_board_3 [0]), .C(n9), .D(\Sudoku_DP/n366 ), .Y(
        \Sudoku_DP/n367 ) );
  OAI21X1 \Sudoku_DP/U304  ( .A(\Sudoku_DP/n203 ), .B(\Sudoku_DP/n366 ), .C(
        \Sudoku_DP/n367 ), .Y(\Sudoku_DP/n556 ) );
  AOI22X1 \Sudoku_DP/U303  ( .A(\Sudoku_DP/n350 ), .B(\Sudoku_DP/n188 ), .C(
        \Sudoku_DP/n233 ), .D(n10), .Y(\Sudoku_DP/n364 ) );
  NAND2X1 \Sudoku_DP/U302  ( .A(\Sudoku_DP/n364 ), .B(n19), .Y(
        \Sudoku_DP/n359 ) );
  AOI22X1 \Sudoku_DP/U301  ( .A(\Sudoku_DP/n361 ), .B(
        \Sudoku_DP/temp_real_board_4 [2]), .C(n8), .D(\Sudoku_DP/n359 ), .Y(
        \Sudoku_DP/n363 ) );
  OAI21X1 \Sudoku_DP/U300  ( .A(\Sudoku_DP/n204 ), .B(\Sudoku_DP/n359 ), .C(
        \Sudoku_DP/n363 ), .Y(\Sudoku_DP/n555 ) );
  AOI22X1 \Sudoku_DP/U299  ( .A(\Sudoku_DP/n361 ), .B(
        \Sudoku_DP/temp_real_board_4 [1]), .C(n7), .D(\Sudoku_DP/n359 ), .Y(
        \Sudoku_DP/n362 ) );
  OAI21X1 \Sudoku_DP/U298  ( .A(\Sudoku_DP/n205 ), .B(\Sudoku_DP/n359 ), .C(
        \Sudoku_DP/n362 ), .Y(\Sudoku_DP/n554 ) );
  AOI22X1 \Sudoku_DP/U297  ( .A(\Sudoku_DP/n361 ), .B(
        \Sudoku_DP/temp_real_board_4 [0]), .C(n9), .D(\Sudoku_DP/n359 ), .Y(
        \Sudoku_DP/n360 ) );
  OAI21X1 \Sudoku_DP/U296  ( .A(\Sudoku_DP/n206 ), .B(\Sudoku_DP/n359 ), .C(
        \Sudoku_DP/n360 ), .Y(\Sudoku_DP/n553 ) );
  AOI22X1 \Sudoku_DP/U295  ( .A(\Sudoku_DP/n350 ), .B(\Sudoku_DP/n189 ), .C(
        \Sudoku_DP/n232 ), .D(n10), .Y(\Sudoku_DP/n357 ) );
  NAND2X1 \Sudoku_DP/U294  ( .A(\Sudoku_DP/n357 ), .B(n19), .Y(
        \Sudoku_DP/n352 ) );
  AOI22X1 \Sudoku_DP/U293  ( .A(\Sudoku_DP/n354 ), .B(
        \Sudoku_DP/temp_real_board_5 [2]), .C(n8), .D(\Sudoku_DP/n352 ), .Y(
        \Sudoku_DP/n356 ) );
  OAI21X1 \Sudoku_DP/U292  ( .A(\Sudoku_DP/n207 ), .B(\Sudoku_DP/n352 ), .C(
        \Sudoku_DP/n356 ), .Y(\Sudoku_DP/n552 ) );
  AOI22X1 \Sudoku_DP/U291  ( .A(\Sudoku_DP/n354 ), .B(
        \Sudoku_DP/temp_real_board_5 [1]), .C(n7), .D(\Sudoku_DP/n352 ), .Y(
        \Sudoku_DP/n355 ) );
  OAI21X1 \Sudoku_DP/U290  ( .A(\Sudoku_DP/n208 ), .B(\Sudoku_DP/n352 ), .C(
        \Sudoku_DP/n355 ), .Y(\Sudoku_DP/n551 ) );
  AOI22X1 \Sudoku_DP/U289  ( .A(\Sudoku_DP/n354 ), .B(
        \Sudoku_DP/temp_real_board_5 [0]), .C(n9), .D(\Sudoku_DP/n352 ), .Y(
        \Sudoku_DP/n353 ) );
  OAI21X1 \Sudoku_DP/U288  ( .A(\Sudoku_DP/n209 ), .B(\Sudoku_DP/n352 ), .C(
        \Sudoku_DP/n353 ), .Y(\Sudoku_DP/n550 ) );
  AOI22X1 \Sudoku_DP/U287  ( .A(\Sudoku_DP/n350 ), .B(\Sudoku_DP/n187 ), .C(
        n12), .D(\Sudoku_DP/n351 ), .Y(\Sudoku_DP/n348 ) );
  NAND2X1 \Sudoku_DP/U286  ( .A(\Sudoku_DP/n348 ), .B(n22), .Y(
        \Sudoku_DP/n340 ) );
  AOI22X1 \Sudoku_DP/U285  ( .A(\Sudoku_DP/n342 ), .B(
        \Sudoku_DP/temp_real_board_6 [2]), .C(n8), .D(\Sudoku_DP/n340 ), .Y(
        \Sudoku_DP/n346 ) );
  OAI21X1 \Sudoku_DP/U284  ( .A(\Sudoku_DP/n210 ), .B(\Sudoku_DP/n340 ), .C(
        \Sudoku_DP/n346 ), .Y(\Sudoku_DP/n549 ) );
  AOI22X1 \Sudoku_DP/U283  ( .A(\Sudoku_DP/n342 ), .B(
        \Sudoku_DP/temp_real_board_6 [1]), .C(n7), .D(\Sudoku_DP/n340 ), .Y(
        \Sudoku_DP/n344 ) );
  OAI21X1 \Sudoku_DP/U282  ( .A(\Sudoku_DP/n211 ), .B(\Sudoku_DP/n340 ), .C(
        \Sudoku_DP/n344 ), .Y(\Sudoku_DP/n548 ) );
  AOI22X1 \Sudoku_DP/U281  ( .A(\Sudoku_DP/n342 ), .B(
        \Sudoku_DP/temp_real_board_6 [0]), .C(n9), .D(\Sudoku_DP/n340 ), .Y(
        \Sudoku_DP/n341 ) );
  OAI21X1 \Sudoku_DP/U280  ( .A(\Sudoku_DP/n212 ), .B(\Sudoku_DP/n340 ), .C(
        \Sudoku_DP/n341 ), .Y(\Sudoku_DP/n547 ) );
  NOR2X1 \Sudoku_DP/U279  ( .A(out_val_flag), .B(out_col_flag), .Y(
        \Sudoku_DP/n339 ) );
  NAND3X1 \Sudoku_DP/U278  ( .A(out_check_flag), .B(\Sudoku_DP/n338 ), .C(
        \Sudoku_DP/n339 ), .Y(\Sudoku_DP/n337 ) );
  XOR2X1 \Sudoku_DP/U277  ( .A(\Sudoku_DP/n200 ), .B(
        \Sudoku_DP/temp_real_board_2 [0]), .Y(\Sudoku_DP/n334 ) );
  XOR2X1 \Sudoku_DP/U276  ( .A(\Sudoku_DP/n196 ), .B(
        \Sudoku_DP/temp_real_board_1 [1]), .Y(\Sudoku_DP/n335 ) );
  XOR2X1 \Sudoku_DP/U275  ( .A(\Sudoku_DP/n201 ), .B(
        \Sudoku_DP/temp_real_board_3 [2]), .Y(\Sudoku_DP/n336 ) );
  NAND3X1 \Sudoku_DP/U274  ( .A(\Sudoku_DP/n334 ), .B(\Sudoku_DP/n335 ), .C(
        \Sudoku_DP/n336 ), .Y(\Sudoku_DP/n329 ) );
  XOR2X1 \Sudoku_DP/U273  ( .A(\Sudoku_DP/n203 ), .B(
        \Sudoku_DP/temp_real_board_3 [0]), .Y(\Sudoku_DP/n331 ) );
  XOR2X1 \Sudoku_DP/U272  ( .A(\Sudoku_DP/n199 ), .B(
        \Sudoku_DP/temp_real_board_2 [1]), .Y(\Sudoku_DP/n332 ) );
  XOR2X1 \Sudoku_DP/U271  ( .A(\Sudoku_DP/n204 ), .B(
        \Sudoku_DP/temp_real_board_4 [2]), .Y(\Sudoku_DP/n333 ) );
  NAND3X1 \Sudoku_DP/U270  ( .A(\Sudoku_DP/n331 ), .B(\Sudoku_DP/n332 ), .C(
        \Sudoku_DP/n333 ), .Y(\Sudoku_DP/n330 ) );
  NOR2X1 \Sudoku_DP/U269  ( .A(\Sudoku_DP/n329 ), .B(\Sudoku_DP/n330 ), .Y(
        \Sudoku_DP/n299 ) );
  XOR2X1 \Sudoku_DP/U268  ( .A(\Sudoku_DP/n194 ), .B(
        \Sudoku_DP/temp_real_board_0 [0]), .Y(\Sudoku_DP/n325 ) );
  XOR2X1 \Sudoku_DP/U267  ( .A(\Sudoku_DP/temp_user_board_0 [2]), .B(
        \Sudoku_DP/temp_real_board_0 [2]), .Y(\Sudoku_DP/n327 ) );
  XOR2X1 \Sudoku_DP/U266  ( .A(\Sudoku_DP/temp_user_board_1 [2]), .B(
        \Sudoku_DP/temp_real_board_1 [2]), .Y(\Sudoku_DP/n328 ) );
  NOR2X1 \Sudoku_DP/U265  ( .A(\Sudoku_DP/n327 ), .B(\Sudoku_DP/n328 ), .Y(
        \Sudoku_DP/n326 ) );
  NAND3X1 \Sudoku_DP/U264  ( .A(\Sudoku_DP/n325 ), .B(\Sudoku_DP/n219 ), .C(
        \Sudoku_DP/n326 ), .Y(\Sudoku_DP/n320 ) );
  XOR2X1 \Sudoku_DP/U263  ( .A(\Sudoku_DP/n197 ), .B(
        \Sudoku_DP/temp_real_board_1 [0]), .Y(\Sudoku_DP/n322 ) );
  XOR2X1 \Sudoku_DP/U262  ( .A(\Sudoku_DP/n193 ), .B(
        \Sudoku_DP/temp_real_board_0 [1]), .Y(\Sudoku_DP/n323 ) );
  XOR2X1 \Sudoku_DP/U261  ( .A(\Sudoku_DP/n198 ), .B(
        \Sudoku_DP/temp_real_board_2 [2]), .Y(\Sudoku_DP/n324 ) );
  NAND3X1 \Sudoku_DP/U260  ( .A(\Sudoku_DP/n322 ), .B(\Sudoku_DP/n323 ), .C(
        \Sudoku_DP/n324 ), .Y(\Sudoku_DP/n321 ) );
  NOR2X1 \Sudoku_DP/U259  ( .A(\Sudoku_DP/n320 ), .B(\Sudoku_DP/n321 ), .Y(
        \Sudoku_DP/n300 ) );
  XOR2X1 \Sudoku_DP/U258  ( .A(\Sudoku_DP/n212 ), .B(
        \Sudoku_DP/temp_real_board_6 [0]), .Y(\Sudoku_DP/n317 ) );
  XOR2X1 \Sudoku_DP/U257  ( .A(\Sudoku_DP/n208 ), .B(
        \Sudoku_DP/temp_real_board_5 [1]), .Y(\Sudoku_DP/n318 ) );
  XOR2X1 \Sudoku_DP/U256  ( .A(\Sudoku_DP/n118 ), .B(
        \Sudoku_DP/temp_real_board_7 [2]), .Y(\Sudoku_DP/n319 ) );
  NAND3X1 \Sudoku_DP/U255  ( .A(\Sudoku_DP/n317 ), .B(\Sudoku_DP/n318 ), .C(
        \Sudoku_DP/n319 ), .Y(\Sudoku_DP/n312 ) );
  XOR2X1 \Sudoku_DP/U254  ( .A(\Sudoku_DP/n120 ), .B(
        \Sudoku_DP/temp_real_board_7 [0]), .Y(\Sudoku_DP/n314 ) );
  XOR2X1 \Sudoku_DP/U253  ( .A(\Sudoku_DP/n211 ), .B(
        \Sudoku_DP/temp_real_board_6 [1]), .Y(\Sudoku_DP/n315 ) );
  XOR2X1 \Sudoku_DP/U252  ( .A(\Sudoku_DP/n119 ), .B(
        \Sudoku_DP/temp_real_board_7 [1]), .Y(\Sudoku_DP/n316 ) );
  NAND3X1 \Sudoku_DP/U251  ( .A(\Sudoku_DP/n314 ), .B(\Sudoku_DP/n315 ), .C(
        \Sudoku_DP/n316 ), .Y(\Sudoku_DP/n313 ) );
  NOR2X1 \Sudoku_DP/U250  ( .A(\Sudoku_DP/n312 ), .B(\Sudoku_DP/n313 ), .Y(
        \Sudoku_DP/n302 ) );
  XOR2X1 \Sudoku_DP/U249  ( .A(\Sudoku_DP/n206 ), .B(
        \Sudoku_DP/temp_real_board_4 [0]), .Y(\Sudoku_DP/n309 ) );
  XOR2X1 \Sudoku_DP/U248  ( .A(\Sudoku_DP/n202 ), .B(
        \Sudoku_DP/temp_real_board_3 [1]), .Y(\Sudoku_DP/n310 ) );
  XOR2X1 \Sudoku_DP/U247  ( .A(\Sudoku_DP/n207 ), .B(
        \Sudoku_DP/temp_real_board_5 [2]), .Y(\Sudoku_DP/n311 ) );
  NAND3X1 \Sudoku_DP/U246  ( .A(\Sudoku_DP/n309 ), .B(\Sudoku_DP/n310 ), .C(
        \Sudoku_DP/n311 ), .Y(\Sudoku_DP/n304 ) );
  XOR2X1 \Sudoku_DP/U245  ( .A(\Sudoku_DP/n209 ), .B(
        \Sudoku_DP/temp_real_board_5 [0]), .Y(\Sudoku_DP/n306 ) );
  XOR2X1 \Sudoku_DP/U244  ( .A(\Sudoku_DP/n205 ), .B(
        \Sudoku_DP/temp_real_board_4 [1]), .Y(\Sudoku_DP/n307 ) );
  XOR2X1 \Sudoku_DP/U243  ( .A(\Sudoku_DP/n210 ), .B(
        \Sudoku_DP/temp_real_board_6 [2]), .Y(\Sudoku_DP/n308 ) );
  NAND3X1 \Sudoku_DP/U242  ( .A(\Sudoku_DP/n306 ), .B(\Sudoku_DP/n307 ), .C(
        \Sudoku_DP/n308 ), .Y(\Sudoku_DP/n305 ) );
  NOR2X1 \Sudoku_DP/U241  ( .A(\Sudoku_DP/n304 ), .B(\Sudoku_DP/n305 ), .Y(
        \Sudoku_DP/n303 ) );
  NAND3X1 \Sudoku_DP/U240  ( .A(\Sudoku_DP/n299 ), .B(\Sudoku_DP/n300 ), .C(
        \Sudoku_DP/n301 ), .Y(\Sudoku_DP/n260 ) );
  XOR2X1 \Sudoku_DP/U239  ( .A(\Sudoku_DP/n144 ), .B(
        \Sudoku_DP/temp_real_board_14 [0]), .Y(\Sudoku_DP/n296 ) );
  XOR2X1 \Sudoku_DP/U238  ( .A(\Sudoku_DP/n143 ), .B(
        \Sudoku_DP/temp_real_board_14 [1]), .Y(\Sudoku_DP/n297 ) );
  XOR2X1 \Sudoku_DP/U237  ( .A(\Sudoku_DP/n142 ), .B(
        \Sudoku_DP/temp_real_board_14 [2]), .Y(\Sudoku_DP/n298 ) );
  NAND3X1 \Sudoku_DP/U236  ( .A(\Sudoku_DP/n296 ), .B(\Sudoku_DP/n297 ), .C(
        \Sudoku_DP/n298 ), .Y(\Sudoku_DP/n291 ) );
  XOR2X1 \Sudoku_DP/U235  ( .A(\Sudoku_DP/n153 ), .B(
        \Sudoku_DP/temp_real_board_15 [0]), .Y(\Sudoku_DP/n293 ) );
  XOR2X1 \Sudoku_DP/U234  ( .A(\Sudoku_DP/n152 ), .B(
        \Sudoku_DP/temp_real_board_15 [1]), .Y(\Sudoku_DP/n294 ) );
  XOR2X1 \Sudoku_DP/U233  ( .A(\Sudoku_DP/n151 ), .B(
        \Sudoku_DP/temp_real_board_15 [2]), .Y(\Sudoku_DP/n295 ) );
  NAND3X1 \Sudoku_DP/U232  ( .A(\Sudoku_DP/n293 ), .B(\Sudoku_DP/n294 ), .C(
        \Sudoku_DP/n295 ), .Y(\Sudoku_DP/n292 ) );
  NOR2X1 \Sudoku_DP/U231  ( .A(\Sudoku_DP/n291 ), .B(\Sudoku_DP/n292 ), .Y(
        \Sudoku_DP/n262 ) );
  XOR2X1 \Sudoku_DP/U230  ( .A(\Sudoku_DP/n138 ), .B(
        \Sudoku_DP/temp_real_board_12 [0]), .Y(\Sudoku_DP/n288 ) );
  XOR2X1 \Sudoku_DP/U229  ( .A(\Sudoku_DP/n137 ), .B(
        \Sudoku_DP/temp_real_board_12 [1]), .Y(\Sudoku_DP/n289 ) );
  XOR2X1 \Sudoku_DP/U228  ( .A(\Sudoku_DP/n136 ), .B(
        \Sudoku_DP/temp_real_board_12 [2]), .Y(\Sudoku_DP/n290 ) );
  NAND3X1 \Sudoku_DP/U227  ( .A(\Sudoku_DP/n288 ), .B(\Sudoku_DP/n289 ), .C(
        \Sudoku_DP/n290 ), .Y(\Sudoku_DP/n283 ) );
  XOR2X1 \Sudoku_DP/U226  ( .A(\Sudoku_DP/n141 ), .B(
        \Sudoku_DP/temp_real_board_13 [0]), .Y(\Sudoku_DP/n285 ) );
  XOR2X1 \Sudoku_DP/U225  ( .A(\Sudoku_DP/n140 ), .B(
        \Sudoku_DP/temp_real_board_13 [1]), .Y(\Sudoku_DP/n286 ) );
  XOR2X1 \Sudoku_DP/U224  ( .A(\Sudoku_DP/n139 ), .B(
        \Sudoku_DP/temp_real_board_13 [2]), .Y(\Sudoku_DP/n287 ) );
  NAND3X1 \Sudoku_DP/U223  ( .A(\Sudoku_DP/n285 ), .B(\Sudoku_DP/n286 ), .C(
        \Sudoku_DP/n287 ), .Y(\Sudoku_DP/n284 ) );
  NOR2X1 \Sudoku_DP/U222  ( .A(\Sudoku_DP/n283 ), .B(\Sudoku_DP/n284 ), .Y(
        \Sudoku_DP/n263 ) );
  XOR2X1 \Sudoku_DP/U221  ( .A(\Sudoku_DP/n129 ), .B(
        \Sudoku_DP/temp_real_board_10 [0]), .Y(\Sudoku_DP/n280 ) );
  XOR2X1 \Sudoku_DP/U220  ( .A(\Sudoku_DP/n128 ), .B(
        \Sudoku_DP/temp_real_board_10 [1]), .Y(\Sudoku_DP/n281 ) );
  XOR2X1 \Sudoku_DP/U219  ( .A(\Sudoku_DP/n127 ), .B(
        \Sudoku_DP/temp_real_board_10 [2]), .Y(\Sudoku_DP/n282 ) );
  NAND3X1 \Sudoku_DP/U218  ( .A(\Sudoku_DP/n280 ), .B(\Sudoku_DP/n281 ), .C(
        \Sudoku_DP/n282 ), .Y(\Sudoku_DP/n275 ) );
  XOR2X1 \Sudoku_DP/U217  ( .A(\Sudoku_DP/n135 ), .B(
        \Sudoku_DP/temp_real_board_11 [0]), .Y(\Sudoku_DP/n277 ) );
  XOR2X1 \Sudoku_DP/U216  ( .A(\Sudoku_DP/n134 ), .B(
        \Sudoku_DP/temp_real_board_11 [1]), .Y(\Sudoku_DP/n278 ) );
  XOR2X1 \Sudoku_DP/U215  ( .A(\Sudoku_DP/n133 ), .B(
        \Sudoku_DP/temp_real_board_11 [2]), .Y(\Sudoku_DP/n279 ) );
  NAND3X1 \Sudoku_DP/U214  ( .A(\Sudoku_DP/n277 ), .B(\Sudoku_DP/n278 ), .C(
        \Sudoku_DP/n279 ), .Y(\Sudoku_DP/n276 ) );
  NOR2X1 \Sudoku_DP/U213  ( .A(\Sudoku_DP/n275 ), .B(\Sudoku_DP/n276 ), .Y(
        \Sudoku_DP/n265 ) );
  XOR2X1 \Sudoku_DP/U212  ( .A(\Sudoku_DP/n121 ), .B(
        \Sudoku_DP/temp_real_board_8 [2]), .Y(\Sudoku_DP/n272 ) );
  XOR2X1 \Sudoku_DP/U211  ( .A(\Sudoku_DP/n123 ), .B(
        \Sudoku_DP/temp_real_board_8 [0]), .Y(\Sudoku_DP/n273 ) );
  XOR2X1 \Sudoku_DP/U210  ( .A(\Sudoku_DP/n122 ), .B(
        \Sudoku_DP/temp_real_board_8 [1]), .Y(\Sudoku_DP/n274 ) );
  NAND3X1 \Sudoku_DP/U209  ( .A(\Sudoku_DP/n272 ), .B(\Sudoku_DP/n273 ), .C(
        \Sudoku_DP/n274 ), .Y(\Sudoku_DP/n267 ) );
  XOR2X1 \Sudoku_DP/U208  ( .A(\Sudoku_DP/n126 ), .B(
        \Sudoku_DP/temp_real_board_9 [0]), .Y(\Sudoku_DP/n269 ) );
  XOR2X1 \Sudoku_DP/U207  ( .A(\Sudoku_DP/n125 ), .B(
        \Sudoku_DP/temp_real_board_9 [1]), .Y(\Sudoku_DP/n270 ) );
  XOR2X1 \Sudoku_DP/U206  ( .A(\Sudoku_DP/n124 ), .B(
        \Sudoku_DP/temp_real_board_9 [2]), .Y(\Sudoku_DP/n271 ) );
  NAND3X1 \Sudoku_DP/U205  ( .A(\Sudoku_DP/n269 ), .B(\Sudoku_DP/n270 ), .C(
        \Sudoku_DP/n271 ), .Y(\Sudoku_DP/n268 ) );
  NOR2X1 \Sudoku_DP/U204  ( .A(\Sudoku_DP/n267 ), .B(\Sudoku_DP/n268 ), .Y(
        \Sudoku_DP/n266 ) );
  NAND3X1 \Sudoku_DP/U203  ( .A(\Sudoku_DP/n262 ), .B(\Sudoku_DP/n263 ), .C(
        \Sudoku_DP/n264 ), .Y(\Sudoku_DP/n261 ) );
  OAI22X1 \Sudoku_DP/U202  ( .A(\Sudoku_DP/n219 ), .B(\Sudoku_DP/n259 ), .C(
        \Sudoku_DP/n260 ), .D(\Sudoku_DP/n261 ), .Y(\Sudoku_DP/n546 ) );
  INVX2 \Sudoku_DP/U201  ( .A(in_diff_cell_val[0]), .Y(\Sudoku_DP/n258 ) );
  INVX2 \Sudoku_DP/U200  ( .A(in_diff_cell_val[1]), .Y(\Sudoku_DP/n257 ) );
  INVX2 \Sudoku_DP/U199  ( .A(\Sudoku_DP/n521 ), .Y(\Sudoku_DP/n256 ) );
  INVX2 \Sudoku_DP/U198  ( .A(\Sudoku_DP/n463 ), .Y(\Sudoku_DP/n255 ) );
  INVX2 \Sudoku_DP/U197  ( .A(\Sudoku_DP/n465 ), .Y(\Sudoku_DP/n254 ) );
  INVX2 \Sudoku_DP/U196  ( .A(in_rand_B[0]), .Y(\Sudoku_DP/n253 ) );
  INVX2 \Sudoku_DP/U195  ( .A(in_rand_B[1]), .Y(\Sudoku_DP/n252 ) );
  INVX2 \Sudoku_DP/U194  ( .A(\Sudoku_DP/n440 ), .Y(\Sudoku_DP/n251 ) );
  INVX2 \Sudoku_DP/U193  ( .A(\Sudoku_DP/n433 ), .Y(\Sudoku_DP/n250 ) );
  INVX2 \Sudoku_DP/U192  ( .A(\Sudoku_DP/n456 ), .Y(\Sudoku_DP/n249 ) );
  INVX2 \Sudoku_DP/U191  ( .A(\Sudoku_DP/n448 ), .Y(\Sudoku_DP/n248 ) );
  INVX2 \Sudoku_DP/U190  ( .A(in_rand_B[2]), .Y(\Sudoku_DP/n247 ) );
  INVX2 \Sudoku_DP/U189  ( .A(\Sudoku_DP/n403 ), .Y(\Sudoku_DP/n246 ) );
  INVX2 \Sudoku_DP/U188  ( .A(\Sudoku_DP/n410 ), .Y(\Sudoku_DP/n245 ) );
  INVX2 \Sudoku_DP/U187  ( .A(in_rand_B[3]), .Y(\Sudoku_DP/n244 ) );
  INVX2 \Sudoku_DP/U186  ( .A(\Sudoku_DP/n424 ), .Y(\Sudoku_DP/n243 ) );
  INVX2 \Sudoku_DP/U185  ( .A(\Sudoku_DP/n417 ), .Y(\Sudoku_DP/n242 ) );
  INVX2 \Sudoku_DP/U184  ( .A(in_rand_A[0]), .Y(\Sudoku_DP/n241 ) );
  INVX2 \Sudoku_DP/U183  ( .A(\Sudoku_DP/n373 ), .Y(\Sudoku_DP/n240 ) );
  INVX2 \Sudoku_DP/U182  ( .A(\Sudoku_DP/n380 ), .Y(\Sudoku_DP/n239 ) );
  INVX2 \Sudoku_DP/U181  ( .A(in_rand_A[1]), .Y(\Sudoku_DP/n238 ) );
  INVX2 \Sudoku_DP/U180  ( .A(\Sudoku_DP/n394 ), .Y(\Sudoku_DP/n237 ) );
  INVX2 \Sudoku_DP/U179  ( .A(\Sudoku_DP/n387 ), .Y(\Sudoku_DP/n236 ) );
  INVX2 \Sudoku_DP/U178  ( .A(in_rand_A[2]), .Y(\Sudoku_DP/n235 ) );
  INVX2 \Sudoku_DP/U177  ( .A(in_rand_A[3]), .Y(\Sudoku_DP/n234 ) );
  INVX2 \Sudoku_DP/U176  ( .A(\Sudoku_DP/n365 ), .Y(\Sudoku_DP/n233 ) );
  INVX2 \Sudoku_DP/U175  ( .A(\Sudoku_DP/n358 ), .Y(\Sudoku_DP/n232 ) );
  INVX2 \Sudoku_DP/U174  ( .A(\Sudoku_DP/n351 ), .Y(\Sudoku_DP/n231 ) );
  INVX2 \Sudoku_DP/U173  ( .A(\Sudoku_DP/n468 ), .Y(\Sudoku_DP/n230 ) );
  INVX2 \Sudoku_DP/U172  ( .A(in_rand_setup[0]), .Y(\Sudoku_DP/n229 ) );
  INVX2 \Sudoku_DP/U171  ( .A(in_rand_setup[1]), .Y(\Sudoku_DP/n228 ) );
  INVX2 \Sudoku_DP/U170  ( .A(in_rand_setup[2]), .Y(\Sudoku_DP/n227 ) );
  INVX2 \Sudoku_DP/U169  ( .A(\Sudoku_DP/n503 ), .Y(\Sudoku_DP/n226 ) );
  INVX2 \Sudoku_DP/U168  ( .A(\Sudoku_DP/n502 ), .Y(\Sudoku_DP/n225 ) );
  INVX2 \Sudoku_DP/U167  ( .A(in_rand_setup[3]), .Y(\Sudoku_DP/n224 ) );
  INVX2 \Sudoku_DP/U166  ( .A(\Sudoku_DP/n506 ), .Y(\Sudoku_DP/n223 ) );
  INVX2 \Sudoku_DP/U165  ( .A(out_col_flag), .Y(\Sudoku_DP/n222 ) );
  INVX2 \Sudoku_DP/U164  ( .A(out_set_diff_flag), .Y(\Sudoku_DP/n221 ) );
  INVX2 \Sudoku_DP/U163  ( .A(out_set_board_flag), .Y(\Sudoku_DP/n220 ) );
  INVX2 \Sudoku_DP/U162  ( .A(\Sudoku_DP/n337 ), .Y(\Sudoku_DP/n219 ) );
  INVX2 \Sudoku_DP/U161  ( .A(\Sudoku_DP/n488 ), .Y(\Sudoku_DP/n218 ) );
  INVX2 \Sudoku_DP/U158  ( .A(\Sudoku_DP/n507 ), .Y(\Sudoku_DP/n215 ) );
  INVX2 \Sudoku_DP/U157  ( .A(\Sudoku_DP/n508 ), .Y(\Sudoku_DP/n214 ) );
  INVX2 \Sudoku_DP/U156  ( .A(\Sudoku_DP/n543 ), .Y(\Sudoku_DP/n213 ) );
  INVX2 \Sudoku_DP/U155  ( .A(\Sudoku_DP/temp_user_board_6 [0]), .Y(
        \Sudoku_DP/n212 ) );
  INVX2 \Sudoku_DP/U154  ( .A(\Sudoku_DP/temp_user_board_6 [1]), .Y(
        \Sudoku_DP/n211 ) );
  INVX2 \Sudoku_DP/U153  ( .A(\Sudoku_DP/temp_user_board_6 [2]), .Y(
        \Sudoku_DP/n210 ) );
  INVX2 \Sudoku_DP/U152  ( .A(\Sudoku_DP/temp_user_board_5 [0]), .Y(
        \Sudoku_DP/n209 ) );
  INVX2 \Sudoku_DP/U151  ( .A(\Sudoku_DP/temp_user_board_5 [1]), .Y(
        \Sudoku_DP/n208 ) );
  INVX2 \Sudoku_DP/U150  ( .A(\Sudoku_DP/temp_user_board_5 [2]), .Y(
        \Sudoku_DP/n207 ) );
  INVX2 \Sudoku_DP/U149  ( .A(\Sudoku_DP/temp_user_board_4 [0]), .Y(
        \Sudoku_DP/n206 ) );
  INVX2 \Sudoku_DP/U148  ( .A(\Sudoku_DP/temp_user_board_4 [1]), .Y(
        \Sudoku_DP/n205 ) );
  INVX2 \Sudoku_DP/U147  ( .A(\Sudoku_DP/temp_user_board_4 [2]), .Y(
        \Sudoku_DP/n204 ) );
  INVX2 \Sudoku_DP/U146  ( .A(\Sudoku_DP/temp_user_board_3 [0]), .Y(
        \Sudoku_DP/n203 ) );
  INVX2 \Sudoku_DP/U145  ( .A(\Sudoku_DP/temp_user_board_3 [1]), .Y(
        \Sudoku_DP/n202 ) );
  INVX2 \Sudoku_DP/U144  ( .A(\Sudoku_DP/temp_user_board_3 [2]), .Y(
        \Sudoku_DP/n201 ) );
  INVX2 \Sudoku_DP/U143  ( .A(\Sudoku_DP/temp_user_board_2 [0]), .Y(
        \Sudoku_DP/n200 ) );
  INVX2 \Sudoku_DP/U142  ( .A(\Sudoku_DP/temp_user_board_2 [1]), .Y(
        \Sudoku_DP/n199 ) );
  INVX2 \Sudoku_DP/U141  ( .A(\Sudoku_DP/temp_user_board_2 [2]), .Y(
        \Sudoku_DP/n198 ) );
  INVX2 \Sudoku_DP/U140  ( .A(\Sudoku_DP/temp_user_board_1 [0]), .Y(
        \Sudoku_DP/n197 ) );
  INVX2 \Sudoku_DP/U139  ( .A(\Sudoku_DP/temp_user_board_1 [1]), .Y(
        \Sudoku_DP/n196 ) );
  INVX2 \Sudoku_DP/U138  ( .A(\Sudoku_DP/temp_user_board_1 [2]), .Y(
        \Sudoku_DP/n195 ) );
  INVX2 \Sudoku_DP/U137  ( .A(\Sudoku_DP/temp_user_board_0 [0]), .Y(
        \Sudoku_DP/n194 ) );
  INVX2 \Sudoku_DP/U136  ( .A(\Sudoku_DP/temp_user_board_0 [1]), .Y(
        \Sudoku_DP/n193 ) );
  INVX2 \Sudoku_DP/U135  ( .A(\Sudoku_DP/temp_user_board_0 [2]), .Y(
        \Sudoku_DP/n192 ) );
  INVX2 \Sudoku_DP/U134  ( .A(\Sudoku_DP/current_cell [0]), .Y(
        \Sudoku_DP/n191 ) );
  INVX2 \Sudoku_DP/U133  ( .A(\Sudoku_DP/current_cell [1]), .Y(
        \Sudoku_DP/n190 ) );
  INVX2 \Sudoku_DP/U132  ( .A(\Sudoku_DP/n449 ), .Y(\Sudoku_DP/n189 ) );
  INVX2 \Sudoku_DP/U131  ( .A(\Sudoku_DP/n457 ), .Y(\Sudoku_DP/n188 ) );
  INVX2 \Sudoku_DP/U130  ( .A(\Sudoku_DP/n441 ), .Y(\Sudoku_DP/n187 ) );
  INVX2 \Sudoku_DP/U129  ( .A(\Sudoku_DP/n470 ), .Y(\Sudoku_DP/n186 ) );
  INVX2 \Sudoku_DP/U128  ( .A(\Sudoku_DP/current_cell [2]), .Y(
        \Sudoku_DP/n185 ) );
  INVX2 \Sudoku_DP/U127  ( .A(\Sudoku_DP/current_cell [3]), .Y(
        \Sudoku_DP/n184 ) );
  INVX2 \Sudoku_DP/U126  ( .A(\Sudoku_DP/current_row [0]), .Y(\Sudoku_DP/n183 ) );
  INVX2 \Sudoku_DP/U125  ( .A(\Sudoku_DP/current_row [1]), .Y(\Sudoku_DP/n182 ) );
  INVX2 \Sudoku_DP/U124  ( .A(\Sudoku_DP/n259 ), .Y(\Sudoku_DP/n181 ) );
  INVX2 \Sudoku_DP/U123  ( .A(\Sudoku_DP/temp_real_board_8 [0]), .Y(
        \Sudoku_DP/n180 ) );
  INVX2 \Sudoku_DP/U122  ( .A(\Sudoku_DP/temp_real_board_8 [1]), .Y(
        \Sudoku_DP/n179 ) );
  INVX2 \Sudoku_DP/U121  ( .A(\Sudoku_DP/temp_real_board_8 [2]), .Y(
        \Sudoku_DP/n178 ) );
  INVX2 \Sudoku_DP/U120  ( .A(\Sudoku_DP/temp_real_board_6 [0]), .Y(
        \Sudoku_DP/n177 ) );
  INVX2 \Sudoku_DP/U119  ( .A(\Sudoku_DP/temp_real_board_6 [1]), .Y(
        \Sudoku_DP/n176 ) );
  INVX2 \Sudoku_DP/U118  ( .A(\Sudoku_DP/temp_real_board_6 [2]), .Y(
        \Sudoku_DP/n175 ) );
  INVX2 \Sudoku_DP/U117  ( .A(\Sudoku_DP/temp_real_board_5 [0]), .Y(
        \Sudoku_DP/n174 ) );
  INVX2 \Sudoku_DP/U116  ( .A(\Sudoku_DP/temp_real_board_5 [1]), .Y(
        \Sudoku_DP/n173 ) );
  INVX2 \Sudoku_DP/U115  ( .A(\Sudoku_DP/temp_real_board_5 [2]), .Y(
        \Sudoku_DP/n172 ) );
  INVX2 \Sudoku_DP/U114  ( .A(\Sudoku_DP/temp_real_board_4 [0]), .Y(
        \Sudoku_DP/n171 ) );
  INVX2 \Sudoku_DP/U113  ( .A(\Sudoku_DP/temp_real_board_4 [1]), .Y(
        \Sudoku_DP/n170 ) );
  INVX2 \Sudoku_DP/U112  ( .A(\Sudoku_DP/temp_real_board_4 [2]), .Y(
        \Sudoku_DP/n169 ) );
  INVX2 \Sudoku_DP/U111  ( .A(\Sudoku_DP/temp_real_board_3 [0]), .Y(
        \Sudoku_DP/n168 ) );
  INVX2 \Sudoku_DP/U110  ( .A(\Sudoku_DP/temp_real_board_3 [1]), .Y(
        \Sudoku_DP/n167 ) );
  INVX2 \Sudoku_DP/U109  ( .A(\Sudoku_DP/temp_real_board_3 [2]), .Y(
        \Sudoku_DP/n166 ) );
  INVX2 \Sudoku_DP/U108  ( .A(\Sudoku_DP/temp_real_board_10 [0]), .Y(
        \Sudoku_DP/n165 ) );
  INVX2 \Sudoku_DP/U107  ( .A(\Sudoku_DP/temp_real_board_10 [1]), .Y(
        \Sudoku_DP/n164 ) );
  INVX2 \Sudoku_DP/U106  ( .A(\Sudoku_DP/temp_real_board_10 [2]), .Y(
        \Sudoku_DP/n163 ) );
  INVX2 \Sudoku_DP/U105  ( .A(\Sudoku_DP/temp_real_board_2 [0]), .Y(
        \Sudoku_DP/n162 ) );
  INVX2 \Sudoku_DP/U104  ( .A(\Sudoku_DP/temp_real_board_2 [1]), .Y(
        \Sudoku_DP/n161 ) );
  INVX2 \Sudoku_DP/U103  ( .A(\Sudoku_DP/temp_real_board_2 [2]), .Y(
        \Sudoku_DP/n160 ) );
  INVX2 \Sudoku_DP/U102  ( .A(\Sudoku_DP/temp_real_board_1 [0]), .Y(
        \Sudoku_DP/n159 ) );
  INVX2 \Sudoku_DP/U101  ( .A(\Sudoku_DP/temp_real_board_1 [1]), .Y(
        \Sudoku_DP/n158 ) );
  INVX2 \Sudoku_DP/U100  ( .A(\Sudoku_DP/temp_real_board_1 [2]), .Y(
        \Sudoku_DP/n157 ) );
  INVX2 \Sudoku_DP/U99  ( .A(\Sudoku_DP/temp_real_board_0 [0]), .Y(
        \Sudoku_DP/n156 ) );
  INVX2 \Sudoku_DP/U98  ( .A(\Sudoku_DP/temp_real_board_0 [1]), .Y(
        \Sudoku_DP/n155 ) );
  INVX2 \Sudoku_DP/U97  ( .A(\Sudoku_DP/temp_real_board_0 [2]), .Y(
        \Sudoku_DP/n154 ) );
  INVX2 \Sudoku_DP/U96  ( .A(\Sudoku_DP/temp_user_board_15 [0]), .Y(
        \Sudoku_DP/n153 ) );
  INVX2 \Sudoku_DP/U95  ( .A(\Sudoku_DP/temp_user_board_15 [1]), .Y(
        \Sudoku_DP/n152 ) );
  INVX2 \Sudoku_DP/U94  ( .A(\Sudoku_DP/temp_user_board_15 [2]), .Y(
        \Sudoku_DP/n151 ) );
  INVX2 \Sudoku_DP/U93  ( .A(\Sudoku_DP/temp_real_board_11 [0]), .Y(
        \Sudoku_DP/n150 ) );
  INVX2 \Sudoku_DP/U92  ( .A(\Sudoku_DP/temp_real_board_11 [1]), .Y(
        \Sudoku_DP/n149 ) );
  INVX2 \Sudoku_DP/U91  ( .A(\Sudoku_DP/temp_real_board_11 [2]), .Y(
        \Sudoku_DP/n148 ) );
  INVX2 \Sudoku_DP/U90  ( .A(\Sudoku_DP/temp_real_board_9 [0]), .Y(
        \Sudoku_DP/n147 ) );
  INVX2 \Sudoku_DP/U89  ( .A(\Sudoku_DP/temp_real_board_9 [1]), .Y(
        \Sudoku_DP/n146 ) );
  INVX2 \Sudoku_DP/U88  ( .A(\Sudoku_DP/temp_real_board_9 [2]), .Y(
        \Sudoku_DP/n145 ) );
  INVX2 \Sudoku_DP/U87  ( .A(\Sudoku_DP/temp_user_board_14 [0]), .Y(
        \Sudoku_DP/n144 ) );
  INVX2 \Sudoku_DP/U86  ( .A(\Sudoku_DP/temp_user_board_14 [1]), .Y(
        \Sudoku_DP/n143 ) );
  INVX2 \Sudoku_DP/U85  ( .A(\Sudoku_DP/temp_user_board_14 [2]), .Y(
        \Sudoku_DP/n142 ) );
  INVX2 \Sudoku_DP/U84  ( .A(\Sudoku_DP/temp_user_board_13 [0]), .Y(
        \Sudoku_DP/n141 ) );
  INVX2 \Sudoku_DP/U83  ( .A(\Sudoku_DP/temp_user_board_13 [1]), .Y(
        \Sudoku_DP/n140 ) );
  INVX2 \Sudoku_DP/U82  ( .A(\Sudoku_DP/temp_user_board_13 [2]), .Y(
        \Sudoku_DP/n139 ) );
  INVX2 \Sudoku_DP/U81  ( .A(\Sudoku_DP/temp_user_board_12 [0]), .Y(
        \Sudoku_DP/n138 ) );
  INVX2 \Sudoku_DP/U80  ( .A(\Sudoku_DP/temp_user_board_12 [1]), .Y(
        \Sudoku_DP/n137 ) );
  INVX2 \Sudoku_DP/U79  ( .A(\Sudoku_DP/temp_user_board_12 [2]), .Y(
        \Sudoku_DP/n136 ) );
  INVX2 \Sudoku_DP/U78  ( .A(\Sudoku_DP/temp_user_board_11 [0]), .Y(
        \Sudoku_DP/n135 ) );
  INVX2 \Sudoku_DP/U77  ( .A(\Sudoku_DP/temp_user_board_11 [1]), .Y(
        \Sudoku_DP/n134 ) );
  INVX2 \Sudoku_DP/U76  ( .A(\Sudoku_DP/temp_user_board_11 [2]), .Y(
        \Sudoku_DP/n133 ) );
  INVX2 \Sudoku_DP/U75  ( .A(\Sudoku_DP/temp_real_board_12 [0]), .Y(
        \Sudoku_DP/n132 ) );
  INVX2 \Sudoku_DP/U74  ( .A(\Sudoku_DP/temp_real_board_12 [1]), .Y(
        \Sudoku_DP/n131 ) );
  INVX2 \Sudoku_DP/U73  ( .A(\Sudoku_DP/temp_real_board_12 [2]), .Y(
        \Sudoku_DP/n130 ) );
  INVX2 \Sudoku_DP/U72  ( .A(\Sudoku_DP/temp_user_board_10 [0]), .Y(
        \Sudoku_DP/n129 ) );
  INVX2 \Sudoku_DP/U71  ( .A(\Sudoku_DP/temp_user_board_10 [1]), .Y(
        \Sudoku_DP/n128 ) );
  INVX2 \Sudoku_DP/U70  ( .A(\Sudoku_DP/temp_user_board_10 [2]), .Y(
        \Sudoku_DP/n127 ) );
  INVX2 \Sudoku_DP/U69  ( .A(\Sudoku_DP/temp_user_board_9 [0]), .Y(
        \Sudoku_DP/n126 ) );
  INVX2 \Sudoku_DP/U68  ( .A(\Sudoku_DP/temp_user_board_9 [1]), .Y(
        \Sudoku_DP/n125 ) );
  INVX2 \Sudoku_DP/U67  ( .A(\Sudoku_DP/temp_user_board_9 [2]), .Y(
        \Sudoku_DP/n124 ) );
  INVX2 \Sudoku_DP/U66  ( .A(\Sudoku_DP/temp_user_board_8 [0]), .Y(
        \Sudoku_DP/n123 ) );
  INVX2 \Sudoku_DP/U65  ( .A(\Sudoku_DP/temp_user_board_8 [1]), .Y(
        \Sudoku_DP/n122 ) );
  INVX2 \Sudoku_DP/U64  ( .A(\Sudoku_DP/temp_user_board_8 [2]), .Y(
        \Sudoku_DP/n121 ) );
  INVX2 \Sudoku_DP/U63  ( .A(\Sudoku_DP/temp_user_board_7 [0]), .Y(
        \Sudoku_DP/n120 ) );
  INVX2 \Sudoku_DP/U62  ( .A(\Sudoku_DP/temp_user_board_7 [1]), .Y(
        \Sudoku_DP/n119 ) );
  INVX2 \Sudoku_DP/U61  ( .A(\Sudoku_DP/temp_user_board_7 [2]), .Y(
        \Sudoku_DP/n118 ) );
  INVX2 \Sudoku_DP/U60  ( .A(\Sudoku_DP/temp_real_board_13 [0]), .Y(
        \Sudoku_DP/n117 ) );
  INVX2 \Sudoku_DP/U59  ( .A(\Sudoku_DP/temp_real_board_13 [1]), .Y(
        \Sudoku_DP/n116 ) );
  INVX2 \Sudoku_DP/U58  ( .A(\Sudoku_DP/temp_real_board_13 [2]), .Y(
        \Sudoku_DP/n115 ) );
  INVX2 \Sudoku_DP/U57  ( .A(\Sudoku_DP/temp_real_board_7 [0]), .Y(
        \Sudoku_DP/n114 ) );
  INVX2 \Sudoku_DP/U56  ( .A(\Sudoku_DP/temp_real_board_7 [1]), .Y(
        \Sudoku_DP/n113 ) );
  INVX2 \Sudoku_DP/U55  ( .A(\Sudoku_DP/temp_real_board_7 [2]), .Y(
        \Sudoku_DP/n112 ) );
  INVX2 \Sudoku_DP/U54  ( .A(\Sudoku_DP/temp_real_board_15 [0]), .Y(
        \Sudoku_DP/n111 ) );
  INVX2 \Sudoku_DP/U53  ( .A(\Sudoku_DP/temp_real_board_15 [1]), .Y(
        \Sudoku_DP/n110 ) );
  INVX2 \Sudoku_DP/U52  ( .A(\Sudoku_DP/temp_real_board_15 [2]), .Y(
        \Sudoku_DP/n109 ) );
  INVX2 \Sudoku_DP/U51  ( .A(\Sudoku_DP/n513 ), .Y(\Sudoku_DP/n108 ) );
  INVX2 \Sudoku_DP/U50  ( .A(\Sudoku_DP/n484 ), .Y(\Sudoku_DP/n107 ) );
  INVX2 \Sudoku_DP/U49  ( .A(\Sudoku_DP/n515 ), .Y(\Sudoku_DP/n106 ) );
  INVX2 \Sudoku_DP/U48  ( .A(\Sudoku_DP/n516 ), .Y(\Sudoku_DP/n105 ) );
  INVX2 \Sudoku_DP/U47  ( .A(\Sudoku_DP/n517 ), .Y(\Sudoku_DP/n104 ) );
  INVX2 \Sudoku_DP/U46  ( .A(\Sudoku_DP/n518 ), .Y(\Sudoku_DP/n103 ) );
  INVX2 \Sudoku_DP/U45  ( .A(\Sudoku_DP/n520 ), .Y(\Sudoku_DP/n102 ) );
  INVX2 \Sudoku_DP/U44  ( .A(\Sudoku_DP/n485 ), .Y(\Sudoku_DP/n101 ) );
  INVX2 \Sudoku_DP/U43  ( .A(\Sudoku_DP/n524 ), .Y(\Sudoku_DP/n100 ) );
  INVX2 \Sudoku_DP/U42  ( .A(\Sudoku_DP/n527 ), .Y(\Sudoku_DP/n99 ) );
  INVX2 \Sudoku_DP/U41  ( .A(\Sudoku_DP/n530 ), .Y(\Sudoku_DP/n98 ) );
  INVX2 \Sudoku_DP/U40  ( .A(\Sudoku_DP/n478 ), .Y(\Sudoku_DP/n97 ) );
  INVX2 \Sudoku_DP/U39  ( .A(\Sudoku_DP/n532 ), .Y(\Sudoku_DP/n96 ) );
  INVX2 \Sudoku_DP/U38  ( .A(\Sudoku_DP/n533 ), .Y(\Sudoku_DP/n95 ) );
  INVX2 \Sudoku_DP/U37  ( .A(\Sudoku_DP/n536 ), .Y(\Sudoku_DP/n94 ) );
  INVX2 \Sudoku_DP/U36  ( .A(\Sudoku_DP/n539 ), .Y(\Sudoku_DP/n93 ) );
  INVX2 \Sudoku_DP/U35  ( .A(\Sudoku_DP/n540 ), .Y(\Sudoku_DP/n92 ) );
  INVX2 \Sudoku_DP/U34  ( .A(\Sudoku_DP/n479 ), .Y(\Sudoku_DP/n91 ) );
  INVX2 \Sudoku_DP/U33  ( .A(\Sudoku_DP/n541 ), .Y(\Sudoku_DP/n90 ) );
  INVX2 \Sudoku_DP/U32  ( .A(\Sudoku_DP/n542 ), .Y(\Sudoku_DP/n89 ) );
  INVX2 \Sudoku_DP/U31  ( .A(\Sudoku_DP/n471 ), .Y(\Sudoku_DP/n88 ) );
  INVX2 \Sudoku_DP/U30  ( .A(\Sudoku_DP/temp_real_board_14 [0]), .Y(
        \Sudoku_DP/n87 ) );
  INVX2 \Sudoku_DP/U29  ( .A(\Sudoku_DP/temp_real_board_14 [1]), .Y(
        \Sudoku_DP/n86 ) );
  INVX2 \Sudoku_DP/U28  ( .A(\Sudoku_DP/temp_real_board_14 [2]), .Y(
        \Sudoku_DP/n85 ) );
  AND2X2 \Sudoku_DP/U27  ( .A(\Sudoku_DP/n505 ), .B(\Sudoku_DP/n224 ), .Y(
        \Sudoku_DP/n504 ) );
  AND2X2 \Sudoku_DP/U26  ( .A(\Sudoku_DP/n458 ), .B(\Sudoku_DP/n184 ), .Y(
        \Sudoku_DP/n395 ) );
  AND2X2 \Sudoku_DP/U25  ( .A(\Sudoku_DP/n395 ), .B(
        \Sudoku_DP/current_cell [2]), .Y(\Sudoku_DP/n350 ) );
  AND2X2 \Sudoku_DP/U24  ( .A(n12), .B(\Sudoku_DP/n459 ), .Y(\Sudoku_DP/n461 )
         );
  AND2X2 \Sudoku_DP/U23  ( .A(\Sudoku_DP/n458 ), .B(
        \Sudoku_DP/current_cell [3]), .Y(\Sudoku_DP/n425 ) );
  AND2X2 \Sudoku_DP/U22  ( .A(\Sudoku_DP/n425 ), .B(\Sudoku_DP/n185 ), .Y(
        \Sudoku_DP/n432 ) );
  AND2X2 \Sudoku_DP/U21  ( .A(n12), .B(\Sudoku_DP/n450 ), .Y(\Sudoku_DP/n452 )
         );
  AND2X2 \Sudoku_DP/U20  ( .A(n12), .B(\Sudoku_DP/n442 ), .Y(\Sudoku_DP/n444 )
         );
  AND2X2 \Sudoku_DP/U19  ( .A(n12), .B(\Sudoku_DP/n434 ), .Y(\Sudoku_DP/n436 )
         );
  AND2X2 \Sudoku_DP/U18  ( .A(n12), .B(\Sudoku_DP/n426 ), .Y(\Sudoku_DP/n428 )
         );
  AND2X2 \Sudoku_DP/U17  ( .A(\Sudoku_DP/n425 ), .B(
        \Sudoku_DP/current_cell [2]), .Y(\Sudoku_DP/n402 ) );
  AND2X2 \Sudoku_DP/U16  ( .A(n12), .B(\Sudoku_DP/n418 ), .Y(\Sudoku_DP/n420 )
         );
  AND2X2 \Sudoku_DP/U15  ( .A(n12), .B(\Sudoku_DP/n411 ), .Y(\Sudoku_DP/n413 )
         );
  AND2X2 \Sudoku_DP/U14  ( .A(n12), .B(\Sudoku_DP/n404 ), .Y(\Sudoku_DP/n406 )
         );
  AND2X2 \Sudoku_DP/U13  ( .A(n12), .B(\Sudoku_DP/n396 ), .Y(\Sudoku_DP/n398 )
         );
  AND2X2 \Sudoku_DP/U12  ( .A(\Sudoku_DP/n395 ), .B(\Sudoku_DP/n185 ), .Y(
        \Sudoku_DP/n372 ) );
  AND2X2 \Sudoku_DP/U11  ( .A(n12), .B(\Sudoku_DP/n388 ), .Y(\Sudoku_DP/n390 )
         );
  AND2X2 \Sudoku_DP/U10  ( .A(n12), .B(\Sudoku_DP/n381 ), .Y(\Sudoku_DP/n383 )
         );
  AND2X2 \Sudoku_DP/U9  ( .A(n12), .B(\Sudoku_DP/n374 ), .Y(\Sudoku_DP/n376 )
         );
  AND2X2 \Sudoku_DP/U8  ( .A(n12), .B(\Sudoku_DP/n366 ), .Y(\Sudoku_DP/n368 )
         );
  AND2X2 \Sudoku_DP/U7  ( .A(n12), .B(\Sudoku_DP/n359 ), .Y(\Sudoku_DP/n361 )
         );
  AND2X2 \Sudoku_DP/U6  ( .A(n12), .B(\Sudoku_DP/n352 ), .Y(\Sudoku_DP/n354 )
         );
  AND2X2 \Sudoku_DP/U5  ( .A(n12), .B(\Sudoku_DP/n340 ), .Y(\Sudoku_DP/n342 )
         );
  AND2X2 \Sudoku_DP/U4  ( .A(\Sudoku_DP/n302 ), .B(\Sudoku_DP/n303 ), .Y(
        \Sudoku_DP/n301 ) );
  AND2X2 \Sudoku_DP/U3  ( .A(\Sudoku_DP/n265 ), .B(\Sudoku_DP/n266 ), .Y(
        \Sudoku_DP/n264 ) );
  DFFNEGX1 \Sudoku_DP/fill_flag_reg[0]  ( .D(\Sudoku_DP/n108 ), .CLK(n47), .Q(
        out_fill_flag[0]) );
  DFFNEGX1 \Sudoku_DP/fill_flag_reg[1]  ( .D(\Sudoku_DP/n106 ), .CLK(n47), .Q(
        out_fill_flag[1]) );
  DFFNEGX1 \Sudoku_DP/fill_flag_reg[2]  ( .D(\Sudoku_DP/n105 ), .CLK(n47), .Q(
        out_fill_flag[2]) );
  DFFNEGX1 \Sudoku_DP/fill_flag_reg[3]  ( .D(\Sudoku_DP/n104 ), .CLK(n47), .Q(
        out_fill_flag[3]) );
  DFFNEGX1 \Sudoku_DP/fill_flag_reg[4]  ( .D(\Sudoku_DP/n103 ), .CLK(n47), .Q(
        out_fill_flag[4]) );
  DFFNEGX1 \Sudoku_DP/fill_flag_reg[5]  ( .D(\Sudoku_DP/n102 ), .CLK(n47), .Q(
        out_fill_flag[5]) );
  DFFNEGX1 \Sudoku_DP/fill_flag_reg[6]  ( .D(\Sudoku_DP/n100 ), .CLK(n47), .Q(
        out_fill_flag[6]) );
  DFFNEGX1 \Sudoku_DP/fill_flag_reg[7]  ( .D(\Sudoku_DP/n99 ), .CLK(n47), .Q(
        out_fill_flag[7]) );
  DFFNEGX1 \Sudoku_DP/fill_flag_reg[8]  ( .D(\Sudoku_DP/n98 ), .CLK(n46), .Q(
        out_fill_flag[8]) );
  DFFNEGX1 \Sudoku_DP/fill_flag_reg[9]  ( .D(\Sudoku_DP/n96 ), .CLK(n46), .Q(
        out_fill_flag[9]) );
  DFFNEGX1 \Sudoku_DP/fill_flag_reg[10]  ( .D(\Sudoku_DP/n95 ), .CLK(n46), .Q(
        out_fill_flag[10]) );
  DFFNEGX1 \Sudoku_DP/fill_flag_reg[11]  ( .D(\Sudoku_DP/n94 ), .CLK(n46), .Q(
        out_fill_flag[11]) );
  DFFNEGX1 \Sudoku_DP/fill_flag_reg[12]  ( .D(\Sudoku_DP/n93 ), .CLK(n46), .Q(
        out_fill_flag[12]) );
  DFFNEGX1 \Sudoku_DP/fill_flag_reg[13]  ( .D(\Sudoku_DP/n92 ), .CLK(n46), .Q(
        out_fill_flag[13]) );
  DFFNEGX1 \Sudoku_DP/fill_flag_reg[14]  ( .D(\Sudoku_DP/n90 ), .CLK(n46), .Q(
        out_fill_flag[14]) );
  DFFNEGX1 \Sudoku_DP/fill_flag_reg[15]  ( .D(\Sudoku_DP/n89 ), .CLK(n46), .Q(
        out_fill_flag[15]) );
  DFFNEGX1 \Sudoku_DP/user_board_15_reg[0]  ( .D(\Sudoku_DP/N602 ), .CLK(n46), 
        .Q(out_user_board_15[0]) );
  DFFNEGX1 \Sudoku_DP/user_board_15_reg[1]  ( .D(\Sudoku_DP/N603 ), .CLK(n46), 
        .Q(out_user_board_15[1]) );
  DFFNEGX1 \Sudoku_DP/user_board_15_reg[2]  ( .D(\Sudoku_DP/N604 ), .CLK(n46), 
        .Q(out_user_board_15[2]) );
  DFFNEGX1 \Sudoku_DP/user_board_14_reg[0]  ( .D(\Sudoku_DP/N599 ), .CLK(n46), 
        .Q(out_user_board_14[0]) );
  DFFNEGX1 \Sudoku_DP/user_board_14_reg[1]  ( .D(\Sudoku_DP/N600 ), .CLK(n46), 
        .Q(out_user_board_14[1]) );
  DFFNEGX1 \Sudoku_DP/user_board_14_reg[2]  ( .D(\Sudoku_DP/N601 ), .CLK(n45), 
        .Q(out_user_board_14[2]) );
  DFFNEGX1 \Sudoku_DP/user_board_13_reg[0]  ( .D(\Sudoku_DP/N596 ), .CLK(n45), 
        .Q(out_user_board_13[0]) );
  DFFNEGX1 \Sudoku_DP/user_board_13_reg[1]  ( .D(\Sudoku_DP/N597 ), .CLK(n45), 
        .Q(out_user_board_13[1]) );
  DFFNEGX1 \Sudoku_DP/user_board_13_reg[2]  ( .D(\Sudoku_DP/N598 ), .CLK(n45), 
        .Q(out_user_board_13[2]) );
  DFFNEGX1 \Sudoku_DP/user_board_12_reg[0]  ( .D(\Sudoku_DP/N593 ), .CLK(n45), 
        .Q(out_user_board_12[0]) );
  DFFNEGX1 \Sudoku_DP/user_board_12_reg[1]  ( .D(\Sudoku_DP/N594 ), .CLK(n45), 
        .Q(out_user_board_12[1]) );
  DFFNEGX1 \Sudoku_DP/user_board_12_reg[2]  ( .D(\Sudoku_DP/N595 ), .CLK(n45), 
        .Q(out_user_board_12[2]) );
  DFFNEGX1 \Sudoku_DP/user_board_11_reg[0]  ( .D(\Sudoku_DP/N590 ), .CLK(n45), 
        .Q(out_user_board_11[0]) );
  DFFNEGX1 \Sudoku_DP/user_board_11_reg[1]  ( .D(\Sudoku_DP/N591 ), .CLK(n45), 
        .Q(out_user_board_11[1]) );
  DFFNEGX1 \Sudoku_DP/user_board_11_reg[2]  ( .D(\Sudoku_DP/N592 ), .CLK(n45), 
        .Q(out_user_board_11[2]) );
  DFFNEGX1 \Sudoku_DP/user_board_10_reg[0]  ( .D(\Sudoku_DP/N587 ), .CLK(n45), 
        .Q(out_user_board_10[0]) );
  DFFNEGX1 \Sudoku_DP/user_board_10_reg[1]  ( .D(\Sudoku_DP/N588 ), .CLK(n45), 
        .Q(out_user_board_10[1]) );
  DFFNEGX1 \Sudoku_DP/user_board_10_reg[2]  ( .D(\Sudoku_DP/N589 ), .CLK(n45), 
        .Q(out_user_board_10[2]) );
  DFFNEGX1 \Sudoku_DP/user_board_9_reg[0]  ( .D(\Sudoku_DP/N584 ), .CLK(n44), 
        .Q(out_user_board_9[0]) );
  DFFNEGX1 \Sudoku_DP/user_board_9_reg[1]  ( .D(\Sudoku_DP/N585 ), .CLK(n44), 
        .Q(out_user_board_9[1]) );
  DFFNEGX1 \Sudoku_DP/user_board_9_reg[2]  ( .D(\Sudoku_DP/N586 ), .CLK(n44), 
        .Q(out_user_board_9[2]) );
  DFFNEGX1 \Sudoku_DP/user_board_8_reg[0]  ( .D(\Sudoku_DP/N581 ), .CLK(n44), 
        .Q(out_user_board_8[0]) );
  DFFNEGX1 \Sudoku_DP/user_board_8_reg[1]  ( .D(\Sudoku_DP/N582 ), .CLK(n44), 
        .Q(out_user_board_8[1]) );
  DFFNEGX1 \Sudoku_DP/user_board_8_reg[2]  ( .D(\Sudoku_DP/N583 ), .CLK(n44), 
        .Q(out_user_board_8[2]) );
  DFFNEGX1 \Sudoku_DP/user_board_7_reg[0]  ( .D(\Sudoku_DP/N578 ), .CLK(n44), 
        .Q(out_user_board_7[0]) );
  DFFNEGX1 \Sudoku_DP/user_board_7_reg[1]  ( .D(\Sudoku_DP/N579 ), .CLK(n44), 
        .Q(out_user_board_7[1]) );
  DFFNEGX1 \Sudoku_DP/user_board_7_reg[2]  ( .D(\Sudoku_DP/N580 ), .CLK(n44), 
        .Q(out_user_board_7[2]) );
  DFFNEGX1 \Sudoku_DP/user_board_6_reg[0]  ( .D(\Sudoku_DP/N575 ), .CLK(n44), 
        .Q(out_user_board_6[0]) );
  DFFNEGX1 \Sudoku_DP/user_board_6_reg[1]  ( .D(\Sudoku_DP/N576 ), .CLK(n44), 
        .Q(out_user_board_6[1]) );
  DFFNEGX1 \Sudoku_DP/user_board_6_reg[2]  ( .D(\Sudoku_DP/N577 ), .CLK(n44), 
        .Q(out_user_board_6[2]) );
  DFFNEGX1 \Sudoku_DP/user_board_5_reg[0]  ( .D(\Sudoku_DP/N572 ), .CLK(n44), 
        .Q(out_user_board_5[0]) );
  DFFNEGX1 \Sudoku_DP/user_board_5_reg[1]  ( .D(\Sudoku_DP/N573 ), .CLK(n43), 
        .Q(out_user_board_5[1]) );
  DFFNEGX1 \Sudoku_DP/user_board_5_reg[2]  ( .D(\Sudoku_DP/N574 ), .CLK(n43), 
        .Q(out_user_board_5[2]) );
  DFFNEGX1 \Sudoku_DP/user_board_4_reg[0]  ( .D(\Sudoku_DP/N569 ), .CLK(n43), 
        .Q(out_user_board_4[0]) );
  DFFNEGX1 \Sudoku_DP/user_board_4_reg[1]  ( .D(\Sudoku_DP/N570 ), .CLK(n43), 
        .Q(out_user_board_4[1]) );
  DFFNEGX1 \Sudoku_DP/user_board_4_reg[2]  ( .D(\Sudoku_DP/N571 ), .CLK(n43), 
        .Q(out_user_board_4[2]) );
  DFFNEGX1 \Sudoku_DP/user_board_3_reg[0]  ( .D(\Sudoku_DP/N566 ), .CLK(n43), 
        .Q(out_user_board_3[0]) );
  DFFNEGX1 \Sudoku_DP/user_board_3_reg[1]  ( .D(\Sudoku_DP/N567 ), .CLK(n43), 
        .Q(out_user_board_3[1]) );
  DFFNEGX1 \Sudoku_DP/user_board_3_reg[2]  ( .D(\Sudoku_DP/N568 ), .CLK(n43), 
        .Q(out_user_board_3[2]) );
  DFFNEGX1 \Sudoku_DP/user_board_2_reg[0]  ( .D(\Sudoku_DP/N563 ), .CLK(n43), 
        .Q(out_user_board_2[0]) );
  DFFNEGX1 \Sudoku_DP/user_board_2_reg[1]  ( .D(\Sudoku_DP/N564 ), .CLK(n43), 
        .Q(out_user_board_2[1]) );
  DFFNEGX1 \Sudoku_DP/user_board_2_reg[2]  ( .D(\Sudoku_DP/N565 ), .CLK(n43), 
        .Q(out_user_board_2[2]) );
  DFFNEGX1 \Sudoku_DP/user_board_1_reg[0]  ( .D(\Sudoku_DP/N560 ), .CLK(n43), 
        .Q(out_user_board_1[0]) );
  DFFNEGX1 \Sudoku_DP/user_board_1_reg[1]  ( .D(\Sudoku_DP/N561 ), .CLK(n43), 
        .Q(out_user_board_1[1]) );
  DFFNEGX1 \Sudoku_DP/user_board_1_reg[2]  ( .D(\Sudoku_DP/N562 ), .CLK(n42), 
        .Q(out_user_board_1[2]) );
  DFFNEGX1 \Sudoku_DP/user_board_0_reg[0]  ( .D(\Sudoku_DP/N557 ), .CLK(n42), 
        .Q(out_user_board_0[0]) );
  DFFNEGX1 \Sudoku_DP/user_board_0_reg[1]  ( .D(\Sudoku_DP/N558 ), .CLK(n42), 
        .Q(out_user_board_0[1]) );
  DFFNEGX1 \Sudoku_DP/user_board_0_reg[2]  ( .D(\Sudoku_DP/N559 ), .CLK(n42), 
        .Q(out_user_board_0[2]) );
  DFFNEGX1 \Sudoku_DP/real_board_15_reg[0]  ( .D(\Sudoku_DP/N554 ), .CLK(n42), 
        .Q(out_real_board_15[0]) );
  DFFNEGX1 \Sudoku_DP/real_board_15_reg[1]  ( .D(\Sudoku_DP/N555 ), .CLK(n42), 
        .Q(out_real_board_15[1]) );
  DFFNEGX1 \Sudoku_DP/real_board_15_reg[2]  ( .D(\Sudoku_DP/N556 ), .CLK(n42), 
        .Q(out_real_board_15[2]) );
  DFFNEGX1 \Sudoku_DP/real_board_14_reg[0]  ( .D(\Sudoku_DP/N551 ), .CLK(n42), 
        .Q(out_real_board_14[0]) );
  DFFNEGX1 \Sudoku_DP/real_board_14_reg[1]  ( .D(\Sudoku_DP/N552 ), .CLK(n42), 
        .Q(out_real_board_14[1]) );
  DFFNEGX1 \Sudoku_DP/real_board_14_reg[2]  ( .D(\Sudoku_DP/N553 ), .CLK(n42), 
        .Q(out_real_board_14[2]) );
  DFFNEGX1 \Sudoku_DP/real_board_13_reg[0]  ( .D(\Sudoku_DP/N548 ), .CLK(n42), 
        .Q(out_real_board_13[0]) );
  DFFNEGX1 \Sudoku_DP/real_board_13_reg[1]  ( .D(\Sudoku_DP/N549 ), .CLK(n42), 
        .Q(out_real_board_13[1]) );
  DFFNEGX1 \Sudoku_DP/real_board_13_reg[2]  ( .D(\Sudoku_DP/N550 ), .CLK(n42), 
        .Q(out_real_board_13[2]) );
  DFFNEGX1 \Sudoku_DP/real_board_12_reg[0]  ( .D(\Sudoku_DP/N545 ), .CLK(n41), 
        .Q(out_real_board_12[0]) );
  DFFNEGX1 \Sudoku_DP/real_board_12_reg[1]  ( .D(\Sudoku_DP/N546 ), .CLK(n41), 
        .Q(out_real_board_12[1]) );
  DFFNEGX1 \Sudoku_DP/real_board_12_reg[2]  ( .D(\Sudoku_DP/N547 ), .CLK(n41), 
        .Q(out_real_board_12[2]) );
  DFFNEGX1 \Sudoku_DP/real_board_11_reg[0]  ( .D(\Sudoku_DP/N542 ), .CLK(n41), 
        .Q(out_real_board_11[0]) );
  DFFNEGX1 \Sudoku_DP/real_board_11_reg[1]  ( .D(\Sudoku_DP/N543 ), .CLK(n41), 
        .Q(out_real_board_11[1]) );
  DFFNEGX1 \Sudoku_DP/real_board_11_reg[2]  ( .D(\Sudoku_DP/N544 ), .CLK(n41), 
        .Q(out_real_board_11[2]) );
  DFFNEGX1 \Sudoku_DP/real_board_10_reg[0]  ( .D(\Sudoku_DP/N539 ), .CLK(n41), 
        .Q(out_real_board_10[0]) );
  DFFNEGX1 \Sudoku_DP/real_board_10_reg[1]  ( .D(\Sudoku_DP/N540 ), .CLK(n41), 
        .Q(out_real_board_10[1]) );
  DFFNEGX1 \Sudoku_DP/real_board_10_reg[2]  ( .D(\Sudoku_DP/N541 ), .CLK(n41), 
        .Q(out_real_board_10[2]) );
  DFFNEGX1 \Sudoku_DP/real_board_9_reg[0]  ( .D(\Sudoku_DP/N536 ), .CLK(n41), 
        .Q(out_real_board_9[0]) );
  DFFNEGX1 \Sudoku_DP/real_board_9_reg[1]  ( .D(\Sudoku_DP/N537 ), .CLK(n41), 
        .Q(out_real_board_9[1]) );
  DFFNEGX1 \Sudoku_DP/real_board_9_reg[2]  ( .D(\Sudoku_DP/N538 ), .CLK(n41), 
        .Q(out_real_board_9[2]) );
  DFFNEGX1 \Sudoku_DP/real_board_8_reg[0]  ( .D(\Sudoku_DP/N533 ), .CLK(n41), 
        .Q(out_real_board_8[0]) );
  DFFNEGX1 \Sudoku_DP/real_board_8_reg[1]  ( .D(\Sudoku_DP/N534 ), .CLK(n40), 
        .Q(out_real_board_8[1]) );
  DFFNEGX1 \Sudoku_DP/real_board_8_reg[2]  ( .D(\Sudoku_DP/N535 ), .CLK(n40), 
        .Q(out_real_board_8[2]) );
  DFFNEGX1 \Sudoku_DP/real_board_7_reg[0]  ( .D(\Sudoku_DP/N530 ), .CLK(n40), 
        .Q(out_real_board_7[0]) );
  DFFNEGX1 \Sudoku_DP/real_board_7_reg[1]  ( .D(\Sudoku_DP/N531 ), .CLK(n40), 
        .Q(out_real_board_7[1]) );
  DFFNEGX1 \Sudoku_DP/real_board_7_reg[2]  ( .D(\Sudoku_DP/N532 ), .CLK(n40), 
        .Q(out_real_board_7[2]) );
  DFFNEGX1 \Sudoku_DP/real_board_6_reg[0]  ( .D(\Sudoku_DP/N527 ), .CLK(n40), 
        .Q(out_real_board_6[0]) );
  DFFNEGX1 \Sudoku_DP/real_board_6_reg[1]  ( .D(\Sudoku_DP/N528 ), .CLK(n40), 
        .Q(out_real_board_6[1]) );
  DFFNEGX1 \Sudoku_DP/real_board_6_reg[2]  ( .D(\Sudoku_DP/N529 ), .CLK(n40), 
        .Q(out_real_board_6[2]) );
  DFFNEGX1 \Sudoku_DP/real_board_5_reg[0]  ( .D(\Sudoku_DP/N524 ), .CLK(n40), 
        .Q(out_real_board_5[0]) );
  DFFNEGX1 \Sudoku_DP/real_board_5_reg[1]  ( .D(\Sudoku_DP/N525 ), .CLK(n40), 
        .Q(out_real_board_5[1]) );
  DFFNEGX1 \Sudoku_DP/real_board_5_reg[2]  ( .D(\Sudoku_DP/N526 ), .CLK(n40), 
        .Q(out_real_board_5[2]) );
  DFFNEGX1 \Sudoku_DP/real_board_4_reg[0]  ( .D(\Sudoku_DP/N521 ), .CLK(n40), 
        .Q(out_real_board_4[0]) );
  DFFNEGX1 \Sudoku_DP/real_board_4_reg[1]  ( .D(\Sudoku_DP/N522 ), .CLK(n40), 
        .Q(out_real_board_4[1]) );
  DFFNEGX1 \Sudoku_DP/real_board_4_reg[2]  ( .D(\Sudoku_DP/N523 ), .CLK(n39), 
        .Q(out_real_board_4[2]) );
  DFFNEGX1 \Sudoku_DP/real_board_3_reg[0]  ( .D(\Sudoku_DP/N518 ), .CLK(n39), 
        .Q(out_real_board_3[0]) );
  DFFNEGX1 \Sudoku_DP/real_board_3_reg[1]  ( .D(\Sudoku_DP/N519 ), .CLK(n39), 
        .Q(out_real_board_3[1]) );
  DFFNEGX1 \Sudoku_DP/real_board_3_reg[2]  ( .D(\Sudoku_DP/N520 ), .CLK(n39), 
        .Q(out_real_board_3[2]) );
  DFFNEGX1 \Sudoku_DP/real_board_2_reg[0]  ( .D(\Sudoku_DP/N515 ), .CLK(n39), 
        .Q(out_real_board_2[0]) );
  DFFNEGX1 \Sudoku_DP/real_board_2_reg[1]  ( .D(\Sudoku_DP/N516 ), .CLK(n39), 
        .Q(out_real_board_2[1]) );
  DFFNEGX1 \Sudoku_DP/real_board_2_reg[2]  ( .D(\Sudoku_DP/N517 ), .CLK(n39), 
        .Q(out_real_board_2[2]) );
  DFFNEGX1 \Sudoku_DP/real_board_1_reg[0]  ( .D(\Sudoku_DP/N512 ), .CLK(n39), 
        .Q(out_real_board_1[0]) );
  DFFNEGX1 \Sudoku_DP/real_board_1_reg[1]  ( .D(\Sudoku_DP/N513 ), .CLK(n39), 
        .Q(out_real_board_1[1]) );
  DFFNEGX1 \Sudoku_DP/real_board_1_reg[2]  ( .D(\Sudoku_DP/N514 ), .CLK(n39), 
        .Q(out_real_board_1[2]) );
  DFFNEGX1 \Sudoku_DP/real_board_0_reg[0]  ( .D(\Sudoku_DP/N509 ), .CLK(n39), 
        .Q(out_real_board_0[0]) );
  DFFNEGX1 \Sudoku_DP/real_board_0_reg[1]  ( .D(\Sudoku_DP/N510 ), .CLK(n39), 
        .Q(out_real_board_0[1]) );
  DFFNEGX1 \Sudoku_DP/real_board_0_reg[2]  ( .D(\Sudoku_DP/N511 ), .CLK(n39), 
        .Q(out_real_board_0[2]) );
  DFFNEGX1 \Sudoku_DP/solved_reg  ( .D(\Sudoku_DP/n181 ), .CLK(n38), .Q(
        out_solved) );
  DFFNEGX1 \Sudoku_DP/temp_solved_reg  ( .D(\Sudoku_DP/n546 ), .CLK(in_clka), 
        .Q(\Sudoku_DP/temp_solved ) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_6_reg[0]  ( .D(\Sudoku_DP/n547 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_6 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_6_reg[1]  ( .D(\Sudoku_DP/n548 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_6 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_6_reg[2]  ( .D(\Sudoku_DP/n549 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_6 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_5_reg[0]  ( .D(\Sudoku_DP/n550 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_5 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_5_reg[1]  ( .D(\Sudoku_DP/n551 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_5 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_5_reg[2]  ( .D(\Sudoku_DP/n552 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_5 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_4_reg[0]  ( .D(\Sudoku_DP/n553 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_4 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_4_reg[1]  ( .D(\Sudoku_DP/n554 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_4 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_4_reg[2]  ( .D(\Sudoku_DP/n555 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_4 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_3_reg[0]  ( .D(\Sudoku_DP/n556 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_3 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_3_reg[1]  ( .D(\Sudoku_DP/n557 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_3 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_3_reg[2]  ( .D(\Sudoku_DP/n558 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_3 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_2_reg[0]  ( .D(\Sudoku_DP/n559 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_2 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_2_reg[1]  ( .D(\Sudoku_DP/n560 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_2 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_2_reg[2]  ( .D(\Sudoku_DP/n561 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_2 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_1_reg[0]  ( .D(\Sudoku_DP/n562 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_1 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_1_reg[1]  ( .D(\Sudoku_DP/n563 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_1 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_1_reg[2]  ( .D(\Sudoku_DP/n564 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_1 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_0_reg[0]  ( .D(\Sudoku_DP/n565 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_0 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_0_reg[1]  ( .D(\Sudoku_DP/n566 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_0 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_0_reg[2]  ( .D(\Sudoku_DP/n567 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_0 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_12_reg[0]  ( .D(\Sudoku_DP/n579 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_12 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_12_reg[2]  ( .D(\Sudoku_DP/n578 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_12 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_12_reg[1]  ( .D(\Sudoku_DP/n577 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_12 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_8_reg[0]  ( .D(\Sudoku_DP/n591 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_8 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_8_reg[2]  ( .D(\Sudoku_DP/n590 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_8 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_8_reg[1]  ( .D(\Sudoku_DP/n589 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_8 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_7_reg[0]  ( .D(\Sudoku_DP/n594 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_7 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_7_reg[2]  ( .D(\Sudoku_DP/n593 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_7 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_7_reg[1]  ( .D(\Sudoku_DP/n592 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_7 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_9_reg[0]  ( .D(\Sudoku_DP/n588 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_9 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_9_reg[2]  ( .D(\Sudoku_DP/n587 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_9 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_9_reg[1]  ( .D(\Sudoku_DP/n586 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_9 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_10_reg[0]  ( .D(\Sudoku_DP/n585 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_10 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_10_reg[2]  ( .D(\Sudoku_DP/n584 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_10 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_10_reg[1]  ( .D(\Sudoku_DP/n583 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_10 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_11_reg[0]  ( .D(\Sudoku_DP/n582 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_11 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_11_reg[2]  ( .D(\Sudoku_DP/n581 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_11 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_11_reg[1]  ( .D(\Sudoku_DP/n580 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_11 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_13_reg[0]  ( .D(\Sudoku_DP/n576 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_13 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_13_reg[2]  ( .D(\Sudoku_DP/n575 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_13 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_13_reg[1]  ( .D(\Sudoku_DP/n574 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_13 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_14_reg[0]  ( .D(\Sudoku_DP/n573 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_14 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_14_reg[2]  ( .D(\Sudoku_DP/n572 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_14 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_14_reg[1]  ( .D(\Sudoku_DP/n571 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_14 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_15_reg[0]  ( .D(\Sudoku_DP/n570 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_15 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_15_reg[2]  ( .D(\Sudoku_DP/n569 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_15 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_user_board_15_reg[1]  ( .D(\Sudoku_DP/n568 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_user_board_15 [1]) );
  DFFNEGX1 \Sudoku_DP/current_cell_reg[0]  ( .D(\Sudoku_DP/n595 ), .CLK(
        in_clka), .Q(\Sudoku_DP/current_cell [0]) );
  DFFNEGX1 \Sudoku_DP/current_cell_reg[1]  ( .D(\Sudoku_DP/n596 ), .CLK(
        in_clka), .Q(\Sudoku_DP/current_cell [1]) );
  DFFNEGX1 \Sudoku_DP/current_cell_reg[2]  ( .D(\Sudoku_DP/n597 ), .CLK(
        in_clka), .Q(\Sudoku_DP/current_cell [2]) );
  DFFNEGX1 \Sudoku_DP/current_cell_reg[3]  ( .D(\Sudoku_DP/n598 ), .CLK(
        in_clka), .Q(\Sudoku_DP/current_cell [3]) );
  DFFNEGX1 \Sudoku_DP/current_row_reg[0]  ( .D(\Sudoku_DP/n599 ), .CLK(in_clka), .Q(\Sudoku_DP/current_row [0]) );
  DFFNEGX1 \Sudoku_DP/current_row_reg[1]  ( .D(\Sudoku_DP/n600 ), .CLK(in_clka), .Q(\Sudoku_DP/current_row [1]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_8_reg[0]  ( .D(\Sudoku_DP/n601 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_8 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_8_reg[1]  ( .D(\Sudoku_DP/n602 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_8 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_8_reg[2]  ( .D(\Sudoku_DP/n603 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_8 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_6_reg[0]  ( .D(\Sudoku_DP/n604 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_6 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_6_reg[1]  ( .D(\Sudoku_DP/n605 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_6 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_6_reg[2]  ( .D(\Sudoku_DP/n606 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_6 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_5_reg[0]  ( .D(\Sudoku_DP/n607 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_5 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_5_reg[1]  ( .D(\Sudoku_DP/n608 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_5 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_5_reg[2]  ( .D(\Sudoku_DP/n609 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_5 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_4_reg[0]  ( .D(\Sudoku_DP/n610 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_4 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_4_reg[1]  ( .D(\Sudoku_DP/n611 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_4 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_4_reg[2]  ( .D(\Sudoku_DP/n612 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_4 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_3_reg[0]  ( .D(\Sudoku_DP/n613 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_3 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_3_reg[1]  ( .D(\Sudoku_DP/n614 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_3 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_3_reg[2]  ( .D(\Sudoku_DP/n615 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_3 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_10_reg[0]  ( .D(\Sudoku_DP/n616 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_10 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_10_reg[1]  ( .D(\Sudoku_DP/n617 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_10 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_10_reg[2]  ( .D(\Sudoku_DP/n618 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_10 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_2_reg[0]  ( .D(\Sudoku_DP/n619 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_2 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_2_reg[1]  ( .D(\Sudoku_DP/n620 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_2 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_2_reg[2]  ( .D(\Sudoku_DP/n621 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_2 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_1_reg[0]  ( .D(\Sudoku_DP/n622 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_1 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_1_reg[1]  ( .D(\Sudoku_DP/n623 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_1 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_1_reg[2]  ( .D(\Sudoku_DP/n624 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_1 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_0_reg[0]  ( .D(\Sudoku_DP/n625 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_0 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_0_reg[1]  ( .D(\Sudoku_DP/n626 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_0 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_0_reg[2]  ( .D(\Sudoku_DP/n627 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_0 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_11_reg[0]  ( .D(\Sudoku_DP/n628 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_11 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_11_reg[1]  ( .D(\Sudoku_DP/n629 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_11 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_11_reg[2]  ( .D(\Sudoku_DP/n630 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_11 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_9_reg[0]  ( .D(\Sudoku_DP/n631 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_9 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_9_reg[1]  ( .D(\Sudoku_DP/n632 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_9 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_9_reg[2]  ( .D(\Sudoku_DP/n633 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_9 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_12_reg[0]  ( .D(\Sudoku_DP/n634 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_12 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_12_reg[1]  ( .D(\Sudoku_DP/n635 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_12 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_12_reg[2]  ( .D(\Sudoku_DP/n636 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_12 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_13_reg[0]  ( .D(\Sudoku_DP/n637 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_13 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_13_reg[1]  ( .D(\Sudoku_DP/n638 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_13 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_13_reg[2]  ( .D(\Sudoku_DP/n639 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_13 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_7_reg[0]  ( .D(\Sudoku_DP/n640 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_7 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_7_reg[1]  ( .D(\Sudoku_DP/n641 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_7 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_7_reg[2]  ( .D(\Sudoku_DP/n642 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_7 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_15_reg[0]  ( .D(\Sudoku_DP/n643 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_15 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_15_reg[1]  ( .D(\Sudoku_DP/n644 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_15 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_15_reg[2]  ( .D(\Sudoku_DP/n645 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_15 [2]) );
  DFFNEGX1 \Sudoku_DP/temp_fill_flag_reg[0]  ( .D(\Sudoku_DP/n646 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_fill_flag [0]) );
  DFFNEGX1 \Sudoku_DP/temp_fill_flag_reg[1]  ( .D(\Sudoku_DP/n647 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_fill_flag [1]) );
  DFFNEGX1 \Sudoku_DP/temp_fill_flag_reg[2]  ( .D(\Sudoku_DP/n648 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_fill_flag [2]) );
  DFFNEGX1 \Sudoku_DP/temp_fill_flag_reg[3]  ( .D(\Sudoku_DP/n649 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_fill_flag [3]) );
  DFFNEGX1 \Sudoku_DP/temp_fill_flag_reg[4]  ( .D(\Sudoku_DP/n650 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_fill_flag [4]) );
  DFFNEGX1 \Sudoku_DP/temp_fill_flag_reg[5]  ( .D(\Sudoku_DP/n651 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_fill_flag [5]) );
  DFFNEGX1 \Sudoku_DP/temp_fill_flag_reg[6]  ( .D(\Sudoku_DP/n652 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_fill_flag [6]) );
  DFFNEGX1 \Sudoku_DP/temp_fill_flag_reg[7]  ( .D(\Sudoku_DP/n653 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_fill_flag [7]) );
  DFFNEGX1 \Sudoku_DP/temp_fill_flag_reg[8]  ( .D(\Sudoku_DP/n654 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_fill_flag [8]) );
  DFFNEGX1 \Sudoku_DP/temp_fill_flag_reg[9]  ( .D(\Sudoku_DP/n655 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_fill_flag [9]) );
  DFFNEGX1 \Sudoku_DP/temp_fill_flag_reg[10]  ( .D(\Sudoku_DP/n656 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_fill_flag [10]) );
  DFFNEGX1 \Sudoku_DP/temp_fill_flag_reg[11]  ( .D(\Sudoku_DP/n657 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_fill_flag [11]) );
  DFFNEGX1 \Sudoku_DP/temp_fill_flag_reg[12]  ( .D(\Sudoku_DP/n658 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_fill_flag [12]) );
  DFFNEGX1 \Sudoku_DP/temp_fill_flag_reg[13]  ( .D(\Sudoku_DP/n659 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_fill_flag [13]) );
  DFFNEGX1 \Sudoku_DP/temp_fill_flag_reg[14]  ( .D(\Sudoku_DP/n660 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_fill_flag [14]) );
  DFFNEGX1 \Sudoku_DP/temp_fill_flag_reg[15]  ( .D(\Sudoku_DP/n661 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_fill_flag [15]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_14_reg[0]  ( .D(\Sudoku_DP/n662 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_14 [0]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_14_reg[1]  ( .D(\Sudoku_DP/n663 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_14 [1]) );
  DFFNEGX1 \Sudoku_DP/temp_real_board_14_reg[2]  ( .D(\Sudoku_DP/n664 ), .CLK(
        in_clka), .Q(\Sudoku_DP/temp_real_board_14 [2]) );
  NOR2X1 \Sudoku_RNG/U77  ( .A(n31), .B(\Sudoku_RNG/n4 ), .Y(\Sudoku_RNG/N40 )
         );
  NOR2X1 \Sudoku_RNG/U76  ( .A(n31), .B(\Sudoku_RNG/n3 ), .Y(\Sudoku_RNG/N41 )
         );
  NOR2X1 \Sudoku_RNG/U75  ( .A(n32), .B(\Sudoku_RNG/n2 ), .Y(\Sudoku_RNG/N42 )
         );
  NOR2X1 \Sudoku_RNG/U74  ( .A(n32), .B(\Sudoku_RNG/n1 ), .Y(\Sudoku_RNG/N43 )
         );
  NOR2X1 \Sudoku_RNG/U73  ( .A(n32), .B(\Sudoku_RNG/n8 ), .Y(\Sudoku_RNG/N44 )
         );
  NOR2X1 \Sudoku_RNG/U72  ( .A(n32), .B(\Sudoku_RNG/n7 ), .Y(\Sudoku_RNG/N45 )
         );
  NOR2X1 \Sudoku_RNG/U71  ( .A(n32), .B(\Sudoku_RNG/n6 ), .Y(\Sudoku_RNG/N46 )
         );
  NOR2X1 \Sudoku_RNG/U70  ( .A(n32), .B(\Sudoku_RNG/n5 ), .Y(\Sudoku_RNG/N47 )
         );
  NOR2X1 \Sudoku_RNG/U69  ( .A(n32), .B(\Sudoku_RNG/n12 ), .Y(\Sudoku_RNG/N48 ) );
  NOR2X1 \Sudoku_RNG/U68  ( .A(n32), .B(\Sudoku_RNG/n11 ), .Y(\Sudoku_RNG/N49 ) );
  NOR2X1 \Sudoku_RNG/U67  ( .A(n32), .B(\Sudoku_RNG/n10 ), .Y(\Sudoku_RNG/N50 ) );
  NOR2X1 \Sudoku_RNG/U66  ( .A(n31), .B(\Sudoku_RNG/n9 ), .Y(\Sudoku_RNG/N51 )
         );
  NAND3X1 \Sudoku_RNG/U65  ( .A(\Sudoku_RNG/n27 ), .B(n33), .C(
        out_gen_rand_flag), .Y(\Sudoku_RNG/n29 ) );
  NAND2X1 \Sudoku_RNG/U64  ( .A(n33), .B(n6), .Y(\Sudoku_RNG/n30 ) );
  XNOR2X1 \Sudoku_RNG/U63  ( .A(\Sudoku_RNG/bit ), .B(\Sudoku_RNG/lfsr [0]), 
        .Y(\Sudoku_RNG/n38 ) );
  XNOR2X1 \Sudoku_RNG/U62  ( .A(\Sudoku_RNG/n17 ), .B(\Sudoku_RNG/lfsr [1]), 
        .Y(\Sudoku_RNG/n39 ) );
  XOR2X1 \Sudoku_RNG/U61  ( .A(\Sudoku_RNG/n38 ), .B(\Sudoku_RNG/n39 ), .Y(
        \Sudoku_RNG/n37 ) );
  OAI22X1 \Sudoku_RNG/U60  ( .A(\Sudoku_RNG/n30 ), .B(\Sudoku_RNG/n24 ), .C(
        \Sudoku_RNG/n37 ), .D(n6), .Y(\Sudoku_RNG/n63 ) );
  OAI22X1 \Sudoku_RNG/U59  ( .A(\Sudoku_RNG/n30 ), .B(\Sudoku_RNG/n23 ), .C(
        \Sudoku_RNG/n29 ), .D(\Sudoku_RNG/n24 ), .Y(\Sudoku_RNG/n62 ) );
  AOI21X1 \Sudoku_RNG/U58  ( .A(\Sudoku_RNG/lfsr [0]), .B(n5), .C(n31), .Y(
        \Sudoku_RNG/n36 ) );
  OAI21X1 \Sudoku_RNG/U57  ( .A(\Sudoku_RNG/n30 ), .B(\Sudoku_RNG/n22 ), .C(
        \Sudoku_RNG/n36 ), .Y(\Sudoku_RNG/n61 ) );
  AOI21X1 \Sudoku_RNG/U56  ( .A(\Sudoku_RNG/lfsr [1]), .B(n5), .C(n31), .Y(
        \Sudoku_RNG/n35 ) );
  OAI21X1 \Sudoku_RNG/U55  ( .A(\Sudoku_RNG/n21 ), .B(\Sudoku_RNG/n30 ), .C(
        \Sudoku_RNG/n35 ), .Y(\Sudoku_RNG/n60 ) );
  AOI21X1 \Sudoku_RNG/U54  ( .A(\Sudoku_RNG/lfsr [2]), .B(n5), .C(n31), .Y(
        \Sudoku_RNG/n34 ) );
  OAI21X1 \Sudoku_RNG/U53  ( .A(\Sudoku_RNG/n30 ), .B(\Sudoku_RNG/n20 ), .C(
        \Sudoku_RNG/n34 ), .Y(\Sudoku_RNG/n59 ) );
  AOI21X1 \Sudoku_RNG/U52  ( .A(\Sudoku_RNG/lfsr [3]), .B(n5), .C(n31), .Y(
        \Sudoku_RNG/n33 ) );
  OAI21X1 \Sudoku_RNG/U51  ( .A(\Sudoku_RNG/n30 ), .B(\Sudoku_RNG/n19 ), .C(
        \Sudoku_RNG/n33 ), .Y(\Sudoku_RNG/n58 ) );
  OAI22X1 \Sudoku_RNG/U50  ( .A(\Sudoku_RNG/n30 ), .B(\Sudoku_RNG/n18 ), .C(n6), .D(\Sudoku_RNG/n19 ), .Y(\Sudoku_RNG/n57 ) );
  OAI22X1 \Sudoku_RNG/U49  ( .A(\Sudoku_RNG/n30 ), .B(\Sudoku_RNG/n17 ), .C(
        \Sudoku_RNG/n29 ), .D(\Sudoku_RNG/n18 ), .Y(\Sudoku_RNG/n56 ) );
  OAI22X1 \Sudoku_RNG/U47  ( .A(n1), .B(\Sudoku_RNG/n8 ), .C(n6), .D(
        \Sudoku_RNG/n20 ), .Y(\Sudoku_RNG/n55 ) );
  OAI22X1 \Sudoku_RNG/U46  ( .A(n1), .B(\Sudoku_RNG/n7 ), .C(\Sudoku_RNG/n29 ), 
        .D(\Sudoku_RNG/n19 ), .Y(\Sudoku_RNG/n54 ) );
  OAI22X1 \Sudoku_RNG/U45  ( .A(n1), .B(\Sudoku_RNG/n6 ), .C(n6), .D(
        \Sudoku_RNG/n18 ), .Y(\Sudoku_RNG/n53 ) );
  OAI22X1 \Sudoku_RNG/U44  ( .A(n1), .B(\Sudoku_RNG/n5 ), .C(\Sudoku_RNG/n29 ), 
        .D(\Sudoku_RNG/n17 ), .Y(\Sudoku_RNG/n52 ) );
  OAI22X1 \Sudoku_RNG/U43  ( .A(\Sudoku_RNG/n30 ), .B(\Sudoku_RNG/n16 ), .C(n6), .D(\Sudoku_RNG/n17 ), .Y(\Sudoku_RNG/n51 ) );
  OAI22X1 \Sudoku_RNG/U42  ( .A(\Sudoku_RNG/n30 ), .B(\Sudoku_RNG/n15 ), .C(
        \Sudoku_RNG/n29 ), .D(\Sudoku_RNG/n16 ), .Y(\Sudoku_RNG/n50 ) );
  AOI21X1 \Sudoku_RNG/U41  ( .A(\Sudoku_RNG/lfsr [8]), .B(n5), .C(n31), .Y(
        \Sudoku_RNG/n32 ) );
  OAI21X1 \Sudoku_RNG/U40  ( .A(\Sudoku_RNG/n30 ), .B(\Sudoku_RNG/n14 ), .C(
        \Sudoku_RNG/n32 ), .Y(\Sudoku_RNG/n49 ) );
  AOI21X1 \Sudoku_RNG/U39  ( .A(\Sudoku_RNG/lfsr [9]), .B(n5), .C(n31), .Y(
        \Sudoku_RNG/n31 ) );
  OAI21X1 \Sudoku_RNG/U38  ( .A(\Sudoku_RNG/n30 ), .B(\Sudoku_RNG/n13 ), .C(
        \Sudoku_RNG/n31 ), .Y(\Sudoku_RNG/n48 ) );
  OAI22X1 \Sudoku_RNG/U37  ( .A(n1), .B(\Sudoku_RNG/n12 ), .C(n6), .D(
        \Sudoku_RNG/n16 ), .Y(\Sudoku_RNG/n47 ) );
  OAI22X1 \Sudoku_RNG/U36  ( .A(n1), .B(\Sudoku_RNG/n11 ), .C(\Sudoku_RNG/n29 ), .D(\Sudoku_RNG/n15 ), .Y(\Sudoku_RNG/n46 ) );
  OAI22X1 \Sudoku_RNG/U35  ( .A(n1), .B(\Sudoku_RNG/n10 ), .C(n6), .D(
        \Sudoku_RNG/n14 ), .Y(\Sudoku_RNG/n45 ) );
  OAI22X1 \Sudoku_RNG/U34  ( .A(n1), .B(\Sudoku_RNG/n9 ), .C(\Sudoku_RNG/n29 ), 
        .D(\Sudoku_RNG/n13 ), .Y(\Sudoku_RNG/n44 ) );
  OAI22X1 \Sudoku_RNG/U33  ( .A(n1), .B(\Sudoku_RNG/n4 ), .C(n6), .D(
        \Sudoku_RNG/n24 ), .Y(\Sudoku_RNG/n43 ) );
  OAI22X1 \Sudoku_RNG/U32  ( .A(n1), .B(\Sudoku_RNG/n3 ), .C(\Sudoku_RNG/n29 ), 
        .D(\Sudoku_RNG/n23 ), .Y(\Sudoku_RNG/n42 ) );
  OAI22X1 \Sudoku_RNG/U31  ( .A(n1), .B(\Sudoku_RNG/n2 ), .C(n6), .D(
        \Sudoku_RNG/n22 ), .Y(\Sudoku_RNG/n41 ) );
  OAI22X1 \Sudoku_RNG/U30  ( .A(n1), .B(\Sudoku_RNG/n1 ), .C(n6), .D(
        \Sudoku_RNG/n21 ), .Y(\Sudoku_RNG/n40 ) );
  INVX2 \Sudoku_RNG/U29  ( .A(in_new_game), .Y(\Sudoku_RNG/n27 ) );
  INVX2 \Sudoku_RNG/U26  ( .A(\Sudoku_RNG/bit ), .Y(\Sudoku_RNG/n24 ) );
  INVX2 \Sudoku_RNG/U25  ( .A(\Sudoku_RNG/lfsr [0]), .Y(\Sudoku_RNG/n23 ) );
  INVX2 \Sudoku_RNG/U24  ( .A(\Sudoku_RNG/lfsr [1]), .Y(\Sudoku_RNG/n22 ) );
  INVX2 \Sudoku_RNG/U23  ( .A(\Sudoku_RNG/lfsr [2]), .Y(\Sudoku_RNG/n21 ) );
  INVX2 \Sudoku_RNG/U22  ( .A(\Sudoku_RNG/lfsr [3]), .Y(\Sudoku_RNG/n20 ) );
  INVX2 \Sudoku_RNG/U21  ( .A(\Sudoku_RNG/lfsr [4]), .Y(\Sudoku_RNG/n19 ) );
  INVX2 \Sudoku_RNG/U20  ( .A(\Sudoku_RNG/lfsr [5]), .Y(\Sudoku_RNG/n18 ) );
  INVX2 \Sudoku_RNG/U19  ( .A(\Sudoku_RNG/lfsr [6]), .Y(\Sudoku_RNG/n17 ) );
  INVX2 \Sudoku_RNG/U18  ( .A(\Sudoku_RNG/lfsr [7]), .Y(\Sudoku_RNG/n16 ) );
  INVX2 \Sudoku_RNG/U17  ( .A(\Sudoku_RNG/lfsr [8]), .Y(\Sudoku_RNG/n15 ) );
  INVX2 \Sudoku_RNG/U16  ( .A(\Sudoku_RNG/lfsr [9]), .Y(\Sudoku_RNG/n14 ) );
  INVX2 \Sudoku_RNG/U15  ( .A(\Sudoku_RNG/lfsr [10]), .Y(\Sudoku_RNG/n13 ) );
  INVX2 \Sudoku_RNG/U14  ( .A(\Sudoku_RNG/temp_rand_B [0]), .Y(
        \Sudoku_RNG/n12 ) );
  INVX2 \Sudoku_RNG/U13  ( .A(\Sudoku_RNG/temp_rand_B [1]), .Y(
        \Sudoku_RNG/n11 ) );
  INVX2 \Sudoku_RNG/U12  ( .A(\Sudoku_RNG/temp_rand_B [2]), .Y(
        \Sudoku_RNG/n10 ) );
  INVX2 \Sudoku_RNG/U11  ( .A(\Sudoku_RNG/temp_rand_B [3]), .Y(\Sudoku_RNG/n9 ) );
  INVX2 \Sudoku_RNG/U10  ( .A(\Sudoku_RNG/temp_rand_A [0]), .Y(\Sudoku_RNG/n8 ) );
  INVX2 \Sudoku_RNG/U9  ( .A(\Sudoku_RNG/temp_rand_A [1]), .Y(\Sudoku_RNG/n7 )
         );
  INVX2 \Sudoku_RNG/U8  ( .A(\Sudoku_RNG/temp_rand_A [2]), .Y(\Sudoku_RNG/n6 )
         );
  INVX2 \Sudoku_RNG/U7  ( .A(\Sudoku_RNG/temp_rand_A [3]), .Y(\Sudoku_RNG/n5 )
         );
  INVX2 \Sudoku_RNG/U6  ( .A(\Sudoku_RNG/temp_rand_setup [0]), .Y(
        \Sudoku_RNG/n4 ) );
  INVX2 \Sudoku_RNG/U5  ( .A(\Sudoku_RNG/temp_rand_setup [1]), .Y(
        \Sudoku_RNG/n3 ) );
  INVX2 \Sudoku_RNG/U4  ( .A(\Sudoku_RNG/temp_rand_setup [2]), .Y(
        \Sudoku_RNG/n2 ) );
  INVX2 \Sudoku_RNG/U3  ( .A(\Sudoku_RNG/temp_rand_setup [3]), .Y(
        \Sudoku_RNG/n1 ) );
  DFFNEGX1 \Sudoku_RNG/rand_setup_reg[0]  ( .D(\Sudoku_RNG/N40 ), .CLK(n38), 
        .Q(in_rand_setup[0]) );
  DFFNEGX1 \Sudoku_RNG/rand_setup_reg[1]  ( .D(\Sudoku_RNG/N41 ), .CLK(n38), 
        .Q(in_rand_setup[1]) );
  DFFNEGX1 \Sudoku_RNG/rand_setup_reg[2]  ( .D(\Sudoku_RNG/N42 ), .CLK(n38), 
        .Q(in_rand_setup[2]) );
  DFFNEGX1 \Sudoku_RNG/rand_setup_reg[3]  ( .D(\Sudoku_RNG/N43 ), .CLK(n38), 
        .Q(in_rand_setup[3]) );
  DFFNEGX1 \Sudoku_RNG/rand_B_reg[0]  ( .D(\Sudoku_RNG/N48 ), .CLK(n38), .Q(
        in_rand_B[0]) );
  DFFNEGX1 \Sudoku_RNG/rand_B_reg[1]  ( .D(\Sudoku_RNG/N49 ), .CLK(n38), .Q(
        in_rand_B[1]) );
  DFFNEGX1 \Sudoku_RNG/rand_B_reg[2]  ( .D(\Sudoku_RNG/N50 ), .CLK(n38), .Q(
        in_rand_B[2]) );
  DFFNEGX1 \Sudoku_RNG/rand_B_reg[3]  ( .D(\Sudoku_RNG/N51 ), .CLK(n38), .Q(
        in_rand_B[3]) );
  DFFNEGX1 \Sudoku_RNG/rand_A_reg[0]  ( .D(\Sudoku_RNG/N44 ), .CLK(n38), .Q(
        in_rand_A[0]) );
  DFFNEGX1 \Sudoku_RNG/rand_A_reg[1]  ( .D(\Sudoku_RNG/N45 ), .CLK(n38), .Q(
        in_rand_A[1]) );
  DFFNEGX1 \Sudoku_RNG/rand_A_reg[2]  ( .D(\Sudoku_RNG/N46 ), .CLK(n38), .Q(
        in_rand_A[2]) );
  DFFNEGX1 \Sudoku_RNG/rand_A_reg[3]  ( .D(\Sudoku_RNG/N47 ), .CLK(n38), .Q(
        in_rand_A[3]) );
  DFFNEGX1 \Sudoku_RNG/temp_rand_setup_reg[0]  ( .D(\Sudoku_RNG/n43 ), .CLK(
        in_clka), .Q(\Sudoku_RNG/temp_rand_setup [0]) );
  DFFNEGX1 \Sudoku_RNG/temp_rand_setup_reg[1]  ( .D(\Sudoku_RNG/n42 ), .CLK(
        in_clka), .Q(\Sudoku_RNG/temp_rand_setup [1]) );
  DFFNEGX1 \Sudoku_RNG/temp_rand_setup_reg[2]  ( .D(\Sudoku_RNG/n41 ), .CLK(
        in_clka), .Q(\Sudoku_RNG/temp_rand_setup [2]) );
  DFFNEGX1 \Sudoku_RNG/temp_rand_setup_reg[3]  ( .D(\Sudoku_RNG/n40 ), .CLK(
        in_clka), .Q(\Sudoku_RNG/temp_rand_setup [3]) );
  DFFNEGX1 \Sudoku_RNG/temp_rand_A_reg[0]  ( .D(\Sudoku_RNG/n55 ), .CLK(
        in_clka), .Q(\Sudoku_RNG/temp_rand_A [0]) );
  DFFNEGX1 \Sudoku_RNG/temp_rand_A_reg[1]  ( .D(\Sudoku_RNG/n54 ), .CLK(
        in_clka), .Q(\Sudoku_RNG/temp_rand_A [1]) );
  DFFNEGX1 \Sudoku_RNG/temp_rand_A_reg[2]  ( .D(\Sudoku_RNG/n53 ), .CLK(
        in_clka), .Q(\Sudoku_RNG/temp_rand_A [2]) );
  DFFNEGX1 \Sudoku_RNG/temp_rand_B_reg[0]  ( .D(\Sudoku_RNG/n47 ), .CLK(
        in_clka), .Q(\Sudoku_RNG/temp_rand_B [0]) );
  DFFNEGX1 \Sudoku_RNG/temp_rand_B_reg[1]  ( .D(\Sudoku_RNG/n46 ), .CLK(
        in_clka), .Q(\Sudoku_RNG/temp_rand_B [1]) );
  DFFNEGX1 \Sudoku_RNG/temp_rand_B_reg[2]  ( .D(\Sudoku_RNG/n45 ), .CLK(
        in_clka), .Q(\Sudoku_RNG/temp_rand_B [2]) );
  DFFNEGX1 \Sudoku_RNG/temp_rand_B_reg[3]  ( .D(\Sudoku_RNG/n44 ), .CLK(
        in_clka), .Q(\Sudoku_RNG/temp_rand_B [3]) );
  DFFNEGX1 \Sudoku_RNG/lfsr_reg[10]  ( .D(\Sudoku_RNG/n48 ), .CLK(in_clka), 
        .Q(\Sudoku_RNG/lfsr [10]) );
  DFFNEGX1 \Sudoku_RNG/lfsr_reg[9]  ( .D(\Sudoku_RNG/n49 ), .CLK(in_clka), .Q(
        \Sudoku_RNG/lfsr [9]) );
  DFFNEGX1 \Sudoku_RNG/lfsr_reg[8]  ( .D(\Sudoku_RNG/n50 ), .CLK(in_clka), .Q(
        \Sudoku_RNG/lfsr [8]) );
  DFFNEGX1 \Sudoku_RNG/lfsr_reg[7]  ( .D(\Sudoku_RNG/n51 ), .CLK(in_clka), .Q(
        \Sudoku_RNG/lfsr [7]) );
  DFFNEGX1 \Sudoku_RNG/temp_rand_A_reg[3]  ( .D(\Sudoku_RNG/n52 ), .CLK(
        in_clka), .Q(\Sudoku_RNG/temp_rand_A [3]) );
  DFFNEGX1 \Sudoku_RNG/lfsr_reg[6]  ( .D(\Sudoku_RNG/n56 ), .CLK(in_clka), .Q(
        \Sudoku_RNG/lfsr [6]) );
  DFFNEGX1 \Sudoku_RNG/lfsr_reg[5]  ( .D(\Sudoku_RNG/n57 ), .CLK(in_clka), .Q(
        \Sudoku_RNG/lfsr [5]) );
  DFFNEGX1 \Sudoku_RNG/lfsr_reg[4]  ( .D(\Sudoku_RNG/n58 ), .CLK(in_clka), .Q(
        \Sudoku_RNG/lfsr [4]) );
  DFFNEGX1 \Sudoku_RNG/lfsr_reg[3]  ( .D(\Sudoku_RNG/n59 ), .CLK(in_clka), .Q(
        \Sudoku_RNG/lfsr [3]) );
  DFFNEGX1 \Sudoku_RNG/lfsr_reg[2]  ( .D(\Sudoku_RNG/n60 ), .CLK(in_clka), .Q(
        \Sudoku_RNG/lfsr [2]) );
  DFFNEGX1 \Sudoku_RNG/lfsr_reg[1]  ( .D(\Sudoku_RNG/n61 ), .CLK(in_clka), .Q(
        \Sudoku_RNG/lfsr [1]) );
  DFFNEGX1 \Sudoku_RNG/lfsr_reg[0]  ( .D(\Sudoku_RNG/n62 ), .CLK(in_clka), .Q(
        \Sudoku_RNG/lfsr [0]) );
  DFFNEGX1 \Sudoku_RNG/bit_reg  ( .D(\Sudoku_RNG/n63 ), .CLK(in_clka), .Q(
        \Sudoku_RNG/bit ) );
  OR2X2 U1 ( .A(\Sudoku_RNG/n30 ), .B(in_new_game), .Y(n1) );
  INVX2 U2 ( .A(n11), .Y(n12) );
  INVX2 U3 ( .A(n26), .Y(n16) );
  BUFX2 U4 ( .A(\Sudoku_DP/n491 ), .Y(n27) );
  BUFX2 U5 ( .A(\Sudoku_DP/n491 ), .Y(n28) );
  BUFX2 U6 ( .A(\Sudoku_DP/n491 ), .Y(n29) );
  BUFX2 U7 ( .A(\Sudoku_DP/n491 ), .Y(n30) );
  INVX2 U8 ( .A(n24), .Y(n18) );
  INVX2 U9 ( .A(n25), .Y(n17) );
  BUFX2 U10 ( .A(n13), .Y(n19) );
  INVX2 U11 ( .A(n2), .Y(n7) );
  INVX2 U12 ( .A(n3), .Y(n8) );
  BUFX2 U13 ( .A(n15), .Y(n26) );
  BUFX2 U14 ( .A(n13), .Y(n21) );
  BUFX2 U15 ( .A(n13), .Y(n20) );
  BUFX2 U16 ( .A(n14), .Y(n22) );
  BUFX2 U17 ( .A(n14), .Y(n23) );
  BUFX2 U18 ( .A(n14), .Y(n24) );
  BUFX2 U19 ( .A(n15), .Y(n25) );
  INVX2 U20 ( .A(n33), .Y(n31) );
  BUFX2 U21 ( .A(\Sudoku_DP/n349 ), .Y(n13) );
  INVX2 U22 ( .A(n10), .Y(n11) );
  OR2X1 U23 ( .A(\Sudoku_DP/n462 ), .B(\Sudoku_DP/n463 ), .Y(n2) );
  INVX2 U24 ( .A(n4), .Y(n9) );
  OR2X1 U25 ( .A(\Sudoku_DP/n465 ), .B(\Sudoku_DP/n462 ), .Y(n3) );
  BUFX2 U26 ( .A(\Sudoku_DP/n349 ), .Y(n15) );
  BUFX2 U27 ( .A(\Sudoku_DP/n349 ), .Y(n14) );
  INVX2 U28 ( .A(n5), .Y(n6) );
  INVX2 U29 ( .A(n33), .Y(n32) );
  BUFX2 U30 ( .A(n37), .Y(n47) );
  BUFX2 U31 ( .A(n34), .Y(n38) );
  BUFX2 U32 ( .A(n34), .Y(n39) );
  BUFX2 U33 ( .A(n34), .Y(n40) );
  BUFX2 U34 ( .A(n35), .Y(n41) );
  BUFX2 U35 ( .A(n35), .Y(n42) );
  BUFX2 U36 ( .A(n35), .Y(n43) );
  BUFX2 U37 ( .A(n36), .Y(n44) );
  BUFX2 U38 ( .A(n36), .Y(n45) );
  BUFX2 U39 ( .A(n36), .Y(n46) );
  BUFX2 U40 ( .A(n37), .Y(n48) );
  INVX2 U41 ( .A(in_restart), .Y(n33) );
  INVX2 U42 ( .A(\Sudoku_DP/n469 ), .Y(n10) );
  OR2X1 U43 ( .A(\Sudoku_DP/n462 ), .B(in_diff_cell_val[0]), .Y(n4) );
  INVX2 U44 ( .A(\Sudoku_RNG/n29 ), .Y(n5) );
  BUFX2 U45 ( .A(in_clkb), .Y(n34) );
  BUFX2 U46 ( .A(in_clkb), .Y(n35) );
  BUFX2 U47 ( .A(in_clkb), .Y(n36) );
  BUFX2 U48 ( .A(in_clkb), .Y(n37) );
endmodule

