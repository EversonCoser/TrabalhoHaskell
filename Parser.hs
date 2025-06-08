{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,471) ([51648,33808,638,2,0,0,0,0,40832,32673,1277,0,0,0,0,0,9984,4163,2554,0,0,0,64,0,19968,8326,5108,12912,41220,159,128,0,0,0,0,25824,16904,319,17191,64016,14345,33305,20432,51648,33808,638,34382,62496,28695,1074,40865,0,0,0,3324,60413,55,0,16384,0,0,0,0,0,0,0,0,0,0,0,13296,45044,159,0,128,0,0,0,26592,24568,319,1024,0,63488,64027,20439,0,0,0,34382,62496,28691,1074,40865,37760,2081,1277,3228,59457,57383,2148,16194,9985,4163,2554,6456,53378,49231,4297,32388,19970,8326,5108,0,0,0,0,0,0,0,0,0,0,0,16,56,32768,49152,1,1024,3968,0,0,0,0,57345,3,37760,2081,1277,49152,1,0,0,0,9984,4163,2554,0,0,0,0,0,19968,8326,5108,0,0,32768,41375,65407,4,32,0,0,0,0,0,0,0,896,0,61376,49104,638,34382,62496,19,128,0,37760,2081,1277,3228,59457,39,0,0,0,0,0,32768,3,0,49286,15,0,256,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","ExpList","Type","num","true","false","'+'","\"&&\"","if","then","else","var","'\\\\'","':'","\"->\"","Number","Boolean","'('","')'","'-'","'*'","'/'","\"||\"","'!'","\"==\"","'>'","'<'","'='","let","in","null","cons","head","tail","isnull","'['","']'","','","menor","%eof"]
        bit_start = st Prelude.* 43
        bit_end = (st Prelude.+ 1) Prelude.* 43
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..42]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (7) = happyShift action_2
action_0 (8) = happyShift action_4
action_0 (9) = happyShift action_5
action_0 (12) = happyShift action_6
action_0 (15) = happyShift action_7
action_0 (16) = happyShift action_8
action_0 (21) = happyShift action_9
action_0 (27) = happyShift action_10
action_0 (32) = happyShift action_11
action_0 (34) = happyShift action_12
action_0 (35) = happyShift action_13
action_0 (36) = happyShift action_14
action_0 (37) = happyShift action_15
action_0 (38) = happyShift action_16
action_0 (39) = happyShift action_17
action_0 (42) = happyShift action_18
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (7) = happyShift action_2
action_3 (8) = happyShift action_4
action_3 (9) = happyShift action_5
action_3 (10) = happyShift action_33
action_3 (11) = happyShift action_34
action_3 (12) = happyShift action_6
action_3 (15) = happyShift action_7
action_3 (16) = happyShift action_8
action_3 (21) = happyShift action_9
action_3 (23) = happyShift action_35
action_3 (24) = happyShift action_36
action_3 (25) = happyShift action_37
action_3 (26) = happyShift action_38
action_3 (27) = happyShift action_10
action_3 (28) = happyShift action_39
action_3 (29) = happyShift action_40
action_3 (30) = happyShift action_41
action_3 (32) = happyShift action_11
action_3 (34) = happyShift action_12
action_3 (35) = happyShift action_13
action_3 (36) = happyShift action_14
action_3 (37) = happyShift action_15
action_3 (38) = happyShift action_16
action_3 (39) = happyShift action_17
action_3 (42) = happyShift action_18
action_3 (43) = happyAccept
action_3 (4) = happyGoto action_32
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (7) = happyShift action_2
action_6 (8) = happyShift action_4
action_6 (9) = happyShift action_5
action_6 (12) = happyShift action_6
action_6 (15) = happyShift action_7
action_6 (16) = happyShift action_8
action_6 (21) = happyShift action_9
action_6 (27) = happyShift action_10
action_6 (32) = happyShift action_11
action_6 (34) = happyShift action_12
action_6 (35) = happyShift action_13
action_6 (36) = happyShift action_14
action_6 (37) = happyShift action_15
action_6 (38) = happyShift action_16
action_6 (39) = happyShift action_17
action_6 (42) = happyShift action_18
action_6 (4) = happyGoto action_31
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_7

action_8 (15) = happyShift action_30
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (7) = happyShift action_2
action_9 (8) = happyShift action_4
action_9 (9) = happyShift action_5
action_9 (12) = happyShift action_6
action_9 (15) = happyShift action_7
action_9 (16) = happyShift action_8
action_9 (21) = happyShift action_9
action_9 (27) = happyShift action_10
action_9 (32) = happyShift action_11
action_9 (34) = happyShift action_12
action_9 (35) = happyShift action_13
action_9 (36) = happyShift action_14
action_9 (37) = happyShift action_15
action_9 (38) = happyShift action_16
action_9 (39) = happyShift action_17
action_9 (42) = happyShift action_18
action_9 (4) = happyGoto action_29
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (7) = happyShift action_2
action_10 (8) = happyShift action_4
action_10 (9) = happyShift action_5
action_10 (12) = happyShift action_6
action_10 (15) = happyShift action_7
action_10 (16) = happyShift action_8
action_10 (21) = happyShift action_9
action_10 (27) = happyShift action_10
action_10 (32) = happyShift action_11
action_10 (34) = happyShift action_12
action_10 (35) = happyShift action_13
action_10 (36) = happyShift action_14
action_10 (37) = happyShift action_15
action_10 (38) = happyShift action_16
action_10 (39) = happyShift action_17
action_10 (42) = happyShift action_18
action_10 (4) = happyGoto action_28
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (15) = happyShift action_27
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_20

action_13 (7) = happyShift action_2
action_13 (8) = happyShift action_4
action_13 (9) = happyShift action_5
action_13 (12) = happyShift action_6
action_13 (15) = happyShift action_7
action_13 (16) = happyShift action_8
action_13 (21) = happyShift action_9
action_13 (27) = happyShift action_10
action_13 (32) = happyShift action_11
action_13 (34) = happyShift action_12
action_13 (35) = happyShift action_13
action_13 (36) = happyShift action_14
action_13 (37) = happyShift action_15
action_13 (38) = happyShift action_16
action_13 (39) = happyShift action_17
action_13 (42) = happyShift action_18
action_13 (4) = happyGoto action_26
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (7) = happyShift action_2
action_14 (8) = happyShift action_4
action_14 (9) = happyShift action_5
action_14 (12) = happyShift action_6
action_14 (15) = happyShift action_7
action_14 (16) = happyShift action_8
action_14 (21) = happyShift action_9
action_14 (27) = happyShift action_10
action_14 (32) = happyShift action_11
action_14 (34) = happyShift action_12
action_14 (35) = happyShift action_13
action_14 (36) = happyShift action_14
action_14 (37) = happyShift action_15
action_14 (38) = happyShift action_16
action_14 (39) = happyShift action_17
action_14 (42) = happyShift action_18
action_14 (4) = happyGoto action_25
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (7) = happyShift action_2
action_15 (8) = happyShift action_4
action_15 (9) = happyShift action_5
action_15 (12) = happyShift action_6
action_15 (15) = happyShift action_7
action_15 (16) = happyShift action_8
action_15 (21) = happyShift action_9
action_15 (27) = happyShift action_10
action_15 (32) = happyShift action_11
action_15 (34) = happyShift action_12
action_15 (35) = happyShift action_13
action_15 (36) = happyShift action_14
action_15 (37) = happyShift action_15
action_15 (38) = happyShift action_16
action_15 (39) = happyShift action_17
action_15 (42) = happyShift action_18
action_15 (4) = happyGoto action_24
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (7) = happyShift action_2
action_16 (8) = happyShift action_4
action_16 (9) = happyShift action_5
action_16 (12) = happyShift action_6
action_16 (15) = happyShift action_7
action_16 (16) = happyShift action_8
action_16 (21) = happyShift action_9
action_16 (27) = happyShift action_10
action_16 (32) = happyShift action_11
action_16 (34) = happyShift action_12
action_16 (35) = happyShift action_13
action_16 (36) = happyShift action_14
action_16 (37) = happyShift action_15
action_16 (38) = happyShift action_16
action_16 (39) = happyShift action_17
action_16 (42) = happyShift action_18
action_16 (4) = happyGoto action_23
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (7) = happyShift action_2
action_17 (8) = happyShift action_4
action_17 (9) = happyShift action_5
action_17 (12) = happyShift action_6
action_17 (15) = happyShift action_7
action_17 (16) = happyShift action_8
action_17 (21) = happyShift action_9
action_17 (27) = happyShift action_10
action_17 (32) = happyShift action_11
action_17 (34) = happyShift action_12
action_17 (35) = happyShift action_13
action_17 (36) = happyShift action_14
action_17 (37) = happyShift action_15
action_17 (38) = happyShift action_16
action_17 (39) = happyShift action_17
action_17 (40) = happyShift action_22
action_17 (42) = happyShift action_18
action_17 (4) = happyGoto action_20
action_17 (5) = happyGoto action_21
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (7) = happyShift action_2
action_18 (8) = happyShift action_4
action_18 (9) = happyShift action_5
action_18 (12) = happyShift action_6
action_18 (15) = happyShift action_7
action_18 (16) = happyShift action_8
action_18 (21) = happyShift action_9
action_18 (27) = happyShift action_10
action_18 (32) = happyShift action_11
action_18 (34) = happyShift action_12
action_18 (35) = happyShift action_13
action_18 (36) = happyShift action_14
action_18 (37) = happyShift action_15
action_18 (38) = happyShift action_16
action_18 (39) = happyShift action_17
action_18 (42) = happyShift action_18
action_18 (4) = happyGoto action_19
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (7) = happyShift action_2
action_19 (8) = happyShift action_4
action_19 (9) = happyShift action_5
action_19 (10) = happyShift action_33
action_19 (11) = happyShift action_34
action_19 (12) = happyShift action_6
action_19 (15) = happyShift action_7
action_19 (16) = happyShift action_8
action_19 (21) = happyShift action_9
action_19 (23) = happyShift action_35
action_19 (24) = happyShift action_36
action_19 (25) = happyShift action_37
action_19 (26) = happyShift action_38
action_19 (27) = happyShift action_10
action_19 (28) = happyShift action_39
action_19 (29) = happyShift action_40
action_19 (30) = happyShift action_41
action_19 (32) = happyShift action_11
action_19 (34) = happyShift action_12
action_19 (35) = happyShift action_13
action_19 (36) = happyShift action_14
action_19 (37) = happyShift action_15
action_19 (38) = happyShift action_16
action_19 (39) = happyShift action_17
action_19 (42) = happyShift action_18
action_19 (4) = happyGoto action_32
action_19 _ = happyReduce_27

action_20 (7) = happyShift action_2
action_20 (8) = happyShift action_4
action_20 (9) = happyShift action_5
action_20 (10) = happyShift action_33
action_20 (11) = happyShift action_34
action_20 (12) = happyShift action_6
action_20 (15) = happyShift action_7
action_20 (16) = happyShift action_8
action_20 (21) = happyShift action_9
action_20 (23) = happyShift action_35
action_20 (24) = happyShift action_36
action_20 (25) = happyShift action_37
action_20 (26) = happyShift action_38
action_20 (27) = happyShift action_10
action_20 (28) = happyShift action_39
action_20 (29) = happyShift action_40
action_20 (30) = happyShift action_41
action_20 (32) = happyShift action_11
action_20 (34) = happyShift action_12
action_20 (35) = happyShift action_13
action_20 (36) = happyShift action_14
action_20 (37) = happyShift action_15
action_20 (38) = happyShift action_16
action_20 (39) = happyShift action_17
action_20 (41) = happyShift action_57
action_20 (42) = happyShift action_18
action_20 (4) = happyGoto action_32
action_20 _ = happyReduce_28

action_21 (40) = happyShift action_56
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_26

action_23 (7) = happyShift action_2
action_23 (8) = happyShift action_4
action_23 (9) = happyShift action_5
action_23 (10) = happyShift action_33
action_23 (11) = happyShift action_34
action_23 (12) = happyShift action_6
action_23 (15) = happyShift action_7
action_23 (16) = happyShift action_8
action_23 (21) = happyShift action_9
action_23 (23) = happyShift action_35
action_23 (24) = happyShift action_36
action_23 (25) = happyShift action_37
action_23 (26) = happyShift action_38
action_23 (27) = happyShift action_10
action_23 (28) = happyShift action_39
action_23 (29) = happyShift action_40
action_23 (30) = happyShift action_41
action_23 (32) = happyShift action_11
action_23 (34) = happyShift action_12
action_23 (35) = happyShift action_13
action_23 (36) = happyShift action_14
action_23 (37) = happyShift action_15
action_23 (38) = happyShift action_16
action_23 (39) = happyShift action_17
action_23 (42) = happyShift action_18
action_23 (4) = happyGoto action_32
action_23 _ = happyReduce_24

action_24 (7) = happyShift action_2
action_24 (8) = happyShift action_4
action_24 (9) = happyShift action_5
action_24 (10) = happyShift action_33
action_24 (11) = happyShift action_34
action_24 (12) = happyShift action_6
action_24 (15) = happyShift action_7
action_24 (16) = happyShift action_8
action_24 (21) = happyShift action_9
action_24 (23) = happyShift action_35
action_24 (24) = happyShift action_36
action_24 (25) = happyShift action_37
action_24 (26) = happyShift action_38
action_24 (27) = happyShift action_10
action_24 (28) = happyShift action_39
action_24 (29) = happyShift action_40
action_24 (30) = happyShift action_41
action_24 (32) = happyShift action_11
action_24 (34) = happyShift action_12
action_24 (35) = happyShift action_13
action_24 (36) = happyShift action_14
action_24 (37) = happyShift action_15
action_24 (38) = happyShift action_16
action_24 (39) = happyShift action_17
action_24 (42) = happyShift action_18
action_24 (4) = happyGoto action_32
action_24 _ = happyReduce_23

action_25 (7) = happyShift action_2
action_25 (8) = happyShift action_4
action_25 (9) = happyShift action_5
action_25 (10) = happyShift action_33
action_25 (11) = happyShift action_34
action_25 (12) = happyShift action_6
action_25 (15) = happyShift action_7
action_25 (16) = happyShift action_8
action_25 (21) = happyShift action_9
action_25 (23) = happyShift action_35
action_25 (24) = happyShift action_36
action_25 (25) = happyShift action_37
action_25 (26) = happyShift action_38
action_25 (27) = happyShift action_10
action_25 (28) = happyShift action_39
action_25 (29) = happyShift action_40
action_25 (30) = happyShift action_41
action_25 (32) = happyShift action_11
action_25 (34) = happyShift action_12
action_25 (35) = happyShift action_13
action_25 (36) = happyShift action_14
action_25 (37) = happyShift action_15
action_25 (38) = happyShift action_16
action_25 (39) = happyShift action_17
action_25 (42) = happyShift action_18
action_25 (4) = happyGoto action_32
action_25 _ = happyReduce_22

action_26 (7) = happyShift action_2
action_26 (8) = happyShift action_4
action_26 (9) = happyShift action_5
action_26 (10) = happyShift action_33
action_26 (11) = happyShift action_34
action_26 (12) = happyShift action_6
action_26 (15) = happyShift action_7
action_26 (16) = happyShift action_8
action_26 (21) = happyShift action_9
action_26 (23) = happyShift action_35
action_26 (24) = happyShift action_36
action_26 (25) = happyShift action_37
action_26 (26) = happyShift action_38
action_26 (27) = happyShift action_10
action_26 (28) = happyShift action_39
action_26 (29) = happyShift action_40
action_26 (30) = happyShift action_41
action_26 (32) = happyShift action_11
action_26 (34) = happyShift action_12
action_26 (35) = happyShift action_13
action_26 (36) = happyShift action_14
action_26 (37) = happyShift action_15
action_26 (38) = happyShift action_16
action_26 (39) = happyShift action_17
action_26 (42) = happyShift action_18
action_26 (4) = happyGoto action_55
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (31) = happyShift action_54
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyShift action_2
action_28 (8) = happyShift action_4
action_28 (9) = happyShift action_5
action_28 (15) = happyShift action_7
action_28 (21) = happyShift action_9
action_28 (29) = happyShift action_40
action_28 (30) = happyShift action_41
action_28 (32) = happyShift action_11
action_28 (34) = happyShift action_12
action_28 (35) = happyShift action_13
action_28 (36) = happyShift action_14
action_28 (37) = happyShift action_15
action_28 (38) = happyShift action_16
action_28 (39) = happyShift action_17
action_28 (42) = happyShift action_18
action_28 (4) = happyGoto action_32
action_28 _ = happyReduce_15

action_29 (7) = happyShift action_2
action_29 (8) = happyShift action_4
action_29 (9) = happyShift action_5
action_29 (10) = happyShift action_33
action_29 (11) = happyShift action_34
action_29 (12) = happyShift action_6
action_29 (15) = happyShift action_7
action_29 (16) = happyShift action_8
action_29 (21) = happyShift action_9
action_29 (22) = happyShift action_53
action_29 (23) = happyShift action_35
action_29 (24) = happyShift action_36
action_29 (25) = happyShift action_37
action_29 (26) = happyShift action_38
action_29 (27) = happyShift action_10
action_29 (28) = happyShift action_39
action_29 (29) = happyShift action_40
action_29 (30) = happyShift action_41
action_29 (32) = happyShift action_11
action_29 (34) = happyShift action_12
action_29 (35) = happyShift action_13
action_29 (36) = happyShift action_14
action_29 (37) = happyShift action_15
action_29 (38) = happyShift action_16
action_29 (39) = happyShift action_17
action_29 (42) = happyShift action_18
action_29 (4) = happyGoto action_32
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (17) = happyShift action_52
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (7) = happyShift action_2
action_31 (8) = happyShift action_4
action_31 (9) = happyShift action_5
action_31 (10) = happyShift action_33
action_31 (11) = happyShift action_34
action_31 (12) = happyShift action_6
action_31 (13) = happyShift action_51
action_31 (15) = happyShift action_7
action_31 (16) = happyShift action_8
action_31 (21) = happyShift action_9
action_31 (23) = happyShift action_35
action_31 (24) = happyShift action_36
action_31 (25) = happyShift action_37
action_31 (26) = happyShift action_38
action_31 (27) = happyShift action_10
action_31 (28) = happyShift action_39
action_31 (29) = happyShift action_40
action_31 (30) = happyShift action_41
action_31 (32) = happyShift action_11
action_31 (34) = happyShift action_12
action_31 (35) = happyShift action_13
action_31 (36) = happyShift action_14
action_31 (37) = happyShift action_15
action_31 (38) = happyShift action_16
action_31 (39) = happyShift action_17
action_31 (42) = happyShift action_18
action_31 (4) = happyGoto action_32
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (7) = happyShift action_2
action_32 (8) = happyShift action_4
action_32 (9) = happyShift action_5
action_32 (10) = happyShift action_33
action_32 (11) = happyShift action_34
action_32 (12) = happyShift action_6
action_32 (15) = happyShift action_7
action_32 (16) = happyShift action_8
action_32 (21) = happyShift action_9
action_32 (23) = happyShift action_35
action_32 (24) = happyShift action_36
action_32 (25) = happyShift action_37
action_32 (26) = happyShift action_38
action_32 (27) = happyShift action_10
action_32 (28) = happyShift action_39
action_32 (29) = happyShift action_40
action_32 (30) = happyShift action_41
action_32 (32) = happyShift action_11
action_32 (34) = happyShift action_12
action_32 (35) = happyShift action_13
action_32 (36) = happyShift action_14
action_32 (37) = happyShift action_15
action_32 (38) = happyShift action_16
action_32 (39) = happyShift action_17
action_32 (42) = happyShift action_18
action_32 (4) = happyGoto action_32
action_32 _ = happyReduce_9

action_33 (7) = happyShift action_2
action_33 (8) = happyShift action_4
action_33 (9) = happyShift action_5
action_33 (12) = happyShift action_6
action_33 (15) = happyShift action_7
action_33 (16) = happyShift action_8
action_33 (21) = happyShift action_9
action_33 (27) = happyShift action_10
action_33 (32) = happyShift action_11
action_33 (34) = happyShift action_12
action_33 (35) = happyShift action_13
action_33 (36) = happyShift action_14
action_33 (37) = happyShift action_15
action_33 (38) = happyShift action_16
action_33 (39) = happyShift action_17
action_33 (42) = happyShift action_18
action_33 (4) = happyGoto action_50
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (7) = happyShift action_2
action_34 (8) = happyShift action_4
action_34 (9) = happyShift action_5
action_34 (12) = happyShift action_6
action_34 (15) = happyShift action_7
action_34 (16) = happyShift action_8
action_34 (21) = happyShift action_9
action_34 (27) = happyShift action_10
action_34 (32) = happyShift action_11
action_34 (34) = happyShift action_12
action_34 (35) = happyShift action_13
action_34 (36) = happyShift action_14
action_34 (37) = happyShift action_15
action_34 (38) = happyShift action_16
action_34 (39) = happyShift action_17
action_34 (42) = happyShift action_18
action_34 (4) = happyGoto action_49
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (7) = happyShift action_2
action_35 (8) = happyShift action_4
action_35 (9) = happyShift action_5
action_35 (12) = happyShift action_6
action_35 (15) = happyShift action_7
action_35 (16) = happyShift action_8
action_35 (21) = happyShift action_9
action_35 (27) = happyShift action_10
action_35 (32) = happyShift action_11
action_35 (34) = happyShift action_12
action_35 (35) = happyShift action_13
action_35 (36) = happyShift action_14
action_35 (37) = happyShift action_15
action_35 (38) = happyShift action_16
action_35 (39) = happyShift action_17
action_35 (42) = happyShift action_18
action_35 (4) = happyGoto action_48
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (7) = happyShift action_2
action_36 (8) = happyShift action_4
action_36 (9) = happyShift action_5
action_36 (12) = happyShift action_6
action_36 (15) = happyShift action_7
action_36 (16) = happyShift action_8
action_36 (21) = happyShift action_9
action_36 (27) = happyShift action_10
action_36 (32) = happyShift action_11
action_36 (34) = happyShift action_12
action_36 (35) = happyShift action_13
action_36 (36) = happyShift action_14
action_36 (37) = happyShift action_15
action_36 (38) = happyShift action_16
action_36 (39) = happyShift action_17
action_36 (42) = happyShift action_18
action_36 (4) = happyGoto action_47
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (7) = happyShift action_2
action_37 (8) = happyShift action_4
action_37 (9) = happyShift action_5
action_37 (12) = happyShift action_6
action_37 (15) = happyShift action_7
action_37 (16) = happyShift action_8
action_37 (21) = happyShift action_9
action_37 (27) = happyShift action_10
action_37 (32) = happyShift action_11
action_37 (34) = happyShift action_12
action_37 (35) = happyShift action_13
action_37 (36) = happyShift action_14
action_37 (37) = happyShift action_15
action_37 (38) = happyShift action_16
action_37 (39) = happyShift action_17
action_37 (42) = happyShift action_18
action_37 (4) = happyGoto action_46
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (7) = happyShift action_2
action_38 (8) = happyShift action_4
action_38 (9) = happyShift action_5
action_38 (12) = happyShift action_6
action_38 (15) = happyShift action_7
action_38 (16) = happyShift action_8
action_38 (21) = happyShift action_9
action_38 (27) = happyShift action_10
action_38 (32) = happyShift action_11
action_38 (34) = happyShift action_12
action_38 (35) = happyShift action_13
action_38 (36) = happyShift action_14
action_38 (37) = happyShift action_15
action_38 (38) = happyShift action_16
action_38 (39) = happyShift action_17
action_38 (42) = happyShift action_18
action_38 (4) = happyGoto action_45
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (7) = happyShift action_2
action_39 (8) = happyShift action_4
action_39 (9) = happyShift action_5
action_39 (12) = happyShift action_6
action_39 (15) = happyShift action_7
action_39 (16) = happyShift action_8
action_39 (21) = happyShift action_9
action_39 (27) = happyShift action_10
action_39 (32) = happyShift action_11
action_39 (34) = happyShift action_12
action_39 (35) = happyShift action_13
action_39 (36) = happyShift action_14
action_39 (37) = happyShift action_15
action_39 (38) = happyShift action_16
action_39 (39) = happyShift action_17
action_39 (42) = happyShift action_18
action_39 (4) = happyGoto action_44
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (7) = happyShift action_2
action_40 (8) = happyShift action_4
action_40 (9) = happyShift action_5
action_40 (12) = happyShift action_6
action_40 (15) = happyShift action_7
action_40 (16) = happyShift action_8
action_40 (21) = happyShift action_9
action_40 (27) = happyShift action_10
action_40 (32) = happyShift action_11
action_40 (34) = happyShift action_12
action_40 (35) = happyShift action_13
action_40 (36) = happyShift action_14
action_40 (37) = happyShift action_15
action_40 (38) = happyShift action_16
action_40 (39) = happyShift action_17
action_40 (42) = happyShift action_18
action_40 (4) = happyGoto action_43
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (7) = happyShift action_2
action_41 (8) = happyShift action_4
action_41 (9) = happyShift action_5
action_41 (12) = happyShift action_6
action_41 (15) = happyShift action_7
action_41 (16) = happyShift action_8
action_41 (21) = happyShift action_9
action_41 (27) = happyShift action_10
action_41 (32) = happyShift action_11
action_41 (34) = happyShift action_12
action_41 (35) = happyShift action_13
action_41 (36) = happyShift action_14
action_41 (37) = happyShift action_15
action_41 (38) = happyShift action_16
action_41 (39) = happyShift action_17
action_41 (42) = happyShift action_18
action_41 (4) = happyGoto action_42
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (7) = happyShift action_2
action_42 (8) = happyShift action_4
action_42 (9) = happyShift action_5
action_42 (10) = happyShift action_33
action_42 (11) = happyShift action_34
action_42 (12) = happyShift action_6
action_42 (15) = happyShift action_7
action_42 (16) = happyShift action_8
action_42 (21) = happyShift action_9
action_42 (23) = happyShift action_35
action_42 (24) = happyShift action_36
action_42 (25) = happyShift action_37
action_42 (26) = happyShift action_38
action_42 (27) = happyShift action_10
action_42 (28) = happyShift action_39
action_42 (29) = happyShift action_40
action_42 (30) = happyShift action_41
action_42 (32) = happyShift action_11
action_42 (34) = happyShift action_12
action_42 (35) = happyShift action_13
action_42 (36) = happyShift action_14
action_42 (37) = happyShift action_15
action_42 (38) = happyShift action_16
action_42 (39) = happyShift action_17
action_42 (42) = happyShift action_18
action_42 (4) = happyGoto action_32
action_42 _ = happyReduce_18

action_43 (7) = happyShift action_2
action_43 (8) = happyShift action_4
action_43 (9) = happyShift action_5
action_43 (10) = happyShift action_33
action_43 (11) = happyShift action_34
action_43 (12) = happyShift action_6
action_43 (15) = happyShift action_7
action_43 (16) = happyShift action_8
action_43 (21) = happyShift action_9
action_43 (23) = happyShift action_35
action_43 (24) = happyShift action_36
action_43 (25) = happyShift action_37
action_43 (26) = happyShift action_38
action_43 (27) = happyShift action_10
action_43 (28) = happyShift action_39
action_43 (29) = happyShift action_40
action_43 (30) = happyShift action_41
action_43 (32) = happyShift action_11
action_43 (34) = happyShift action_12
action_43 (35) = happyShift action_13
action_43 (36) = happyShift action_14
action_43 (37) = happyShift action_15
action_43 (38) = happyShift action_16
action_43 (39) = happyShift action_17
action_43 (42) = happyShift action_18
action_43 (4) = happyGoto action_32
action_43 _ = happyReduce_17

action_44 (7) = happyShift action_2
action_44 (8) = happyShift action_4
action_44 (9) = happyShift action_5
action_44 (15) = happyShift action_7
action_44 (21) = happyShift action_9
action_44 (29) = happyShift action_40
action_44 (30) = happyShift action_41
action_44 (32) = happyShift action_11
action_44 (34) = happyShift action_12
action_44 (35) = happyShift action_13
action_44 (36) = happyShift action_14
action_44 (37) = happyShift action_15
action_44 (38) = happyShift action_16
action_44 (39) = happyShift action_17
action_44 (42) = happyShift action_18
action_44 (4) = happyGoto action_32
action_44 _ = happyReduce_16

action_45 (7) = happyShift action_2
action_45 (8) = happyShift action_4
action_45 (9) = happyShift action_5
action_45 (15) = happyShift action_7
action_45 (21) = happyShift action_9
action_45 (29) = happyShift action_40
action_45 (30) = happyShift action_41
action_45 (32) = happyShift action_11
action_45 (34) = happyShift action_12
action_45 (35) = happyShift action_13
action_45 (36) = happyShift action_14
action_45 (37) = happyShift action_15
action_45 (38) = happyShift action_16
action_45 (39) = happyShift action_17
action_45 (42) = happyShift action_18
action_45 (4) = happyGoto action_32
action_45 _ = happyReduce_14

action_46 (7) = happyShift action_2
action_46 (8) = happyShift action_4
action_46 (9) = happyShift action_5
action_46 (11) = happyShift action_34
action_46 (15) = happyShift action_7
action_46 (21) = happyShift action_9
action_46 (26) = happyShift action_38
action_46 (27) = happyShift action_10
action_46 (28) = happyShift action_39
action_46 (29) = happyShift action_40
action_46 (30) = happyShift action_41
action_46 (32) = happyShift action_11
action_46 (34) = happyShift action_12
action_46 (35) = happyShift action_13
action_46 (36) = happyShift action_14
action_46 (37) = happyShift action_15
action_46 (38) = happyShift action_16
action_46 (39) = happyShift action_17
action_46 (42) = happyShift action_18
action_46 (4) = happyGoto action_32
action_46 _ = happyReduce_13

action_47 (7) = happyShift action_2
action_47 (8) = happyShift action_4
action_47 (9) = happyShift action_5
action_47 (11) = happyShift action_34
action_47 (15) = happyShift action_7
action_47 (21) = happyShift action_9
action_47 (26) = happyShift action_38
action_47 (27) = happyShift action_10
action_47 (28) = happyShift action_39
action_47 (29) = happyShift action_40
action_47 (30) = happyShift action_41
action_47 (32) = happyShift action_11
action_47 (34) = happyShift action_12
action_47 (35) = happyShift action_13
action_47 (36) = happyShift action_14
action_47 (37) = happyShift action_15
action_47 (38) = happyShift action_16
action_47 (39) = happyShift action_17
action_47 (42) = happyShift action_18
action_47 (4) = happyGoto action_32
action_47 _ = happyReduce_12

action_48 (7) = happyShift action_2
action_48 (8) = happyShift action_4
action_48 (9) = happyShift action_5
action_48 (11) = happyShift action_34
action_48 (15) = happyShift action_7
action_48 (21) = happyShift action_9
action_48 (24) = happyShift action_36
action_48 (25) = happyShift action_37
action_48 (26) = happyShift action_38
action_48 (27) = happyShift action_10
action_48 (28) = happyShift action_39
action_48 (29) = happyShift action_40
action_48 (30) = happyShift action_41
action_48 (32) = happyShift action_11
action_48 (34) = happyShift action_12
action_48 (35) = happyShift action_13
action_48 (36) = happyShift action_14
action_48 (37) = happyShift action_15
action_48 (38) = happyShift action_16
action_48 (39) = happyShift action_17
action_48 (42) = happyShift action_18
action_48 (4) = happyGoto action_32
action_48 _ = happyReduce_11

action_49 (7) = happyShift action_2
action_49 (8) = happyShift action_4
action_49 (9) = happyShift action_5
action_49 (15) = happyShift action_7
action_49 (21) = happyShift action_9
action_49 (29) = happyShift action_40
action_49 (30) = happyShift action_41
action_49 (32) = happyShift action_11
action_49 (34) = happyShift action_12
action_49 (35) = happyShift action_13
action_49 (36) = happyShift action_14
action_49 (37) = happyShift action_15
action_49 (38) = happyShift action_16
action_49 (39) = happyShift action_17
action_49 (42) = happyShift action_18
action_49 (4) = happyGoto action_32
action_49 _ = happyReduce_5

action_50 (7) = happyShift action_2
action_50 (8) = happyShift action_4
action_50 (9) = happyShift action_5
action_50 (11) = happyShift action_34
action_50 (15) = happyShift action_7
action_50 (21) = happyShift action_9
action_50 (24) = happyShift action_36
action_50 (25) = happyShift action_37
action_50 (26) = happyShift action_38
action_50 (27) = happyShift action_10
action_50 (28) = happyShift action_39
action_50 (29) = happyShift action_40
action_50 (30) = happyShift action_41
action_50 (32) = happyShift action_11
action_50 (34) = happyShift action_12
action_50 (35) = happyShift action_13
action_50 (36) = happyShift action_14
action_50 (37) = happyShift action_15
action_50 (38) = happyShift action_16
action_50 (39) = happyShift action_17
action_50 (42) = happyShift action_18
action_50 (4) = happyGoto action_32
action_50 _ = happyReduce_4

action_51 (7) = happyShift action_2
action_51 (8) = happyShift action_4
action_51 (9) = happyShift action_5
action_51 (12) = happyShift action_6
action_51 (15) = happyShift action_7
action_51 (16) = happyShift action_8
action_51 (21) = happyShift action_9
action_51 (27) = happyShift action_10
action_51 (32) = happyShift action_11
action_51 (34) = happyShift action_12
action_51 (35) = happyShift action_13
action_51 (36) = happyShift action_14
action_51 (37) = happyShift action_15
action_51 (38) = happyShift action_16
action_51 (39) = happyShift action_17
action_51 (42) = happyShift action_18
action_51 (4) = happyGoto action_64
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (19) = happyShift action_61
action_52 (20) = happyShift action_62
action_52 (21) = happyShift action_63
action_52 (6) = happyGoto action_60
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_10

action_54 (7) = happyShift action_2
action_54 (8) = happyShift action_4
action_54 (9) = happyShift action_5
action_54 (12) = happyShift action_6
action_54 (15) = happyShift action_7
action_54 (16) = happyShift action_8
action_54 (21) = happyShift action_9
action_54 (27) = happyShift action_10
action_54 (32) = happyShift action_11
action_54 (34) = happyShift action_12
action_54 (35) = happyShift action_13
action_54 (36) = happyShift action_14
action_54 (37) = happyShift action_15
action_54 (38) = happyShift action_16
action_54 (39) = happyShift action_17
action_54 (42) = happyShift action_18
action_54 (4) = happyGoto action_59
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (7) = happyShift action_2
action_55 (8) = happyShift action_4
action_55 (9) = happyShift action_5
action_55 (10) = happyShift action_33
action_55 (11) = happyShift action_34
action_55 (12) = happyShift action_6
action_55 (15) = happyShift action_7
action_55 (16) = happyShift action_8
action_55 (21) = happyShift action_9
action_55 (23) = happyShift action_35
action_55 (24) = happyShift action_36
action_55 (25) = happyShift action_37
action_55 (26) = happyShift action_38
action_55 (27) = happyShift action_10
action_55 (28) = happyShift action_39
action_55 (29) = happyShift action_40
action_55 (30) = happyShift action_41
action_55 (32) = happyShift action_11
action_55 (34) = happyShift action_12
action_55 (35) = happyShift action_13
action_55 (36) = happyShift action_14
action_55 (37) = happyShift action_15
action_55 (38) = happyShift action_16
action_55 (39) = happyShift action_17
action_55 (42) = happyShift action_18
action_55 (4) = happyGoto action_32
action_55 _ = happyReduce_21

action_56 _ = happyReduce_25

action_57 (7) = happyShift action_2
action_57 (8) = happyShift action_4
action_57 (9) = happyShift action_5
action_57 (12) = happyShift action_6
action_57 (15) = happyShift action_7
action_57 (16) = happyShift action_8
action_57 (21) = happyShift action_9
action_57 (27) = happyShift action_10
action_57 (32) = happyShift action_11
action_57 (34) = happyShift action_12
action_57 (35) = happyShift action_13
action_57 (36) = happyShift action_14
action_57 (37) = happyShift action_15
action_57 (38) = happyShift action_16
action_57 (39) = happyShift action_17
action_57 (42) = happyShift action_18
action_57 (4) = happyGoto action_20
action_57 (5) = happyGoto action_58
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_29

action_59 (7) = happyShift action_2
action_59 (8) = happyShift action_4
action_59 (9) = happyShift action_5
action_59 (10) = happyShift action_33
action_59 (11) = happyShift action_34
action_59 (12) = happyShift action_6
action_59 (15) = happyShift action_7
action_59 (16) = happyShift action_8
action_59 (21) = happyShift action_9
action_59 (23) = happyShift action_35
action_59 (24) = happyShift action_36
action_59 (25) = happyShift action_37
action_59 (26) = happyShift action_38
action_59 (27) = happyShift action_10
action_59 (28) = happyShift action_39
action_59 (29) = happyShift action_40
action_59 (30) = happyShift action_41
action_59 (32) = happyShift action_11
action_59 (33) = happyShift action_68
action_59 (34) = happyShift action_12
action_59 (35) = happyShift action_13
action_59 (36) = happyShift action_14
action_59 (37) = happyShift action_15
action_59 (38) = happyShift action_16
action_59 (39) = happyShift action_17
action_59 (42) = happyShift action_18
action_59 (4) = happyGoto action_32
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (18) = happyShift action_67
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_31

action_62 _ = happyReduce_30

action_63 (19) = happyShift action_61
action_63 (20) = happyShift action_62
action_63 (21) = happyShift action_63
action_63 (6) = happyGoto action_66
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (7) = happyShift action_2
action_64 (8) = happyShift action_4
action_64 (9) = happyShift action_5
action_64 (10) = happyShift action_33
action_64 (11) = happyShift action_34
action_64 (12) = happyShift action_6
action_64 (14) = happyShift action_65
action_64 (15) = happyShift action_7
action_64 (16) = happyShift action_8
action_64 (21) = happyShift action_9
action_64 (23) = happyShift action_35
action_64 (24) = happyShift action_36
action_64 (25) = happyShift action_37
action_64 (26) = happyShift action_38
action_64 (27) = happyShift action_10
action_64 (28) = happyShift action_39
action_64 (29) = happyShift action_40
action_64 (30) = happyShift action_41
action_64 (32) = happyShift action_11
action_64 (34) = happyShift action_12
action_64 (35) = happyShift action_13
action_64 (36) = happyShift action_14
action_64 (37) = happyShift action_15
action_64 (38) = happyShift action_16
action_64 (39) = happyShift action_17
action_64 (42) = happyShift action_18
action_64 (4) = happyGoto action_32
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (7) = happyShift action_2
action_65 (8) = happyShift action_4
action_65 (9) = happyShift action_5
action_65 (12) = happyShift action_6
action_65 (15) = happyShift action_7
action_65 (16) = happyShift action_8
action_65 (21) = happyShift action_9
action_65 (27) = happyShift action_10
action_65 (32) = happyShift action_11
action_65 (34) = happyShift action_12
action_65 (35) = happyShift action_13
action_65 (36) = happyShift action_14
action_65 (37) = happyShift action_15
action_65 (38) = happyShift action_16
action_65 (39) = happyShift action_17
action_65 (42) = happyShift action_18
action_65 (4) = happyGoto action_72
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (18) = happyShift action_71
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (7) = happyShift action_2
action_67 (8) = happyShift action_4
action_67 (9) = happyShift action_5
action_67 (12) = happyShift action_6
action_67 (15) = happyShift action_7
action_67 (16) = happyShift action_8
action_67 (21) = happyShift action_9
action_67 (27) = happyShift action_10
action_67 (32) = happyShift action_11
action_67 (34) = happyShift action_12
action_67 (35) = happyShift action_13
action_67 (36) = happyShift action_14
action_67 (37) = happyShift action_15
action_67 (38) = happyShift action_16
action_67 (39) = happyShift action_17
action_67 (42) = happyShift action_18
action_67 (4) = happyGoto action_70
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (7) = happyShift action_2
action_68 (8) = happyShift action_4
action_68 (9) = happyShift action_5
action_68 (12) = happyShift action_6
action_68 (15) = happyShift action_7
action_68 (16) = happyShift action_8
action_68 (21) = happyShift action_9
action_68 (27) = happyShift action_10
action_68 (32) = happyShift action_11
action_68 (34) = happyShift action_12
action_68 (35) = happyShift action_13
action_68 (36) = happyShift action_14
action_68 (37) = happyShift action_15
action_68 (38) = happyShift action_16
action_68 (39) = happyShift action_17
action_68 (42) = happyShift action_18
action_68 (4) = happyGoto action_69
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (7) = happyShift action_2
action_69 (8) = happyShift action_4
action_69 (9) = happyShift action_5
action_69 (10) = happyShift action_33
action_69 (11) = happyShift action_34
action_69 (12) = happyShift action_6
action_69 (15) = happyShift action_7
action_69 (16) = happyShift action_8
action_69 (21) = happyShift action_9
action_69 (23) = happyShift action_35
action_69 (24) = happyShift action_36
action_69 (25) = happyShift action_37
action_69 (26) = happyShift action_38
action_69 (27) = happyShift action_10
action_69 (28) = happyShift action_39
action_69 (29) = happyShift action_40
action_69 (30) = happyShift action_41
action_69 (32) = happyShift action_11
action_69 (34) = happyShift action_12
action_69 (35) = happyShift action_13
action_69 (36) = happyShift action_14
action_69 (37) = happyShift action_15
action_69 (38) = happyShift action_16
action_69 (39) = happyShift action_17
action_69 (42) = happyShift action_18
action_69 (4) = happyGoto action_32
action_69 _ = happyReduce_19

action_70 (7) = happyShift action_2
action_70 (8) = happyShift action_4
action_70 (9) = happyShift action_5
action_70 (10) = happyShift action_33
action_70 (11) = happyShift action_34
action_70 (12) = happyShift action_6
action_70 (15) = happyShift action_7
action_70 (16) = happyShift action_8
action_70 (21) = happyShift action_9
action_70 (23) = happyShift action_35
action_70 (24) = happyShift action_36
action_70 (25) = happyShift action_37
action_70 (26) = happyShift action_38
action_70 (27) = happyShift action_10
action_70 (28) = happyShift action_39
action_70 (29) = happyShift action_40
action_70 (30) = happyShift action_41
action_70 (32) = happyShift action_11
action_70 (34) = happyShift action_12
action_70 (35) = happyShift action_13
action_70 (36) = happyShift action_14
action_70 (37) = happyShift action_15
action_70 (38) = happyShift action_16
action_70 (39) = happyShift action_17
action_70 (42) = happyShift action_18
action_70 (4) = happyGoto action_32
action_70 _ = happyReduce_8

action_71 (19) = happyShift action_61
action_71 (20) = happyShift action_62
action_71 (21) = happyShift action_63
action_71 (6) = happyGoto action_73
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (7) = happyShift action_2
action_72 (8) = happyShift action_4
action_72 (9) = happyShift action_5
action_72 (10) = happyShift action_33
action_72 (11) = happyShift action_34
action_72 (12) = happyFail []
action_72 (15) = happyShift action_7
action_72 (16) = happyShift action_8
action_72 (21) = happyShift action_9
action_72 (23) = happyShift action_35
action_72 (24) = happyShift action_36
action_72 (25) = happyShift action_37
action_72 (26) = happyShift action_38
action_72 (27) = happyShift action_10
action_72 (28) = happyShift action_39
action_72 (29) = happyShift action_40
action_72 (30) = happyShift action_41
action_72 (32) = happyShift action_11
action_72 (34) = happyShift action_12
action_72 (35) = happyShift action_13
action_72 (36) = happyShift action_14
action_72 (37) = happyShift action_15
action_72 (38) = happyShift action_16
action_72 (39) = happyShift action_17
action_72 (42) = happyShift action_18
action_72 (4) = happyGoto action_32
action_72 _ = happyReduce_6

action_73 (22) = happyShift action_74
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_32

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happyReduce 6 4 happyReduction_6
happyReduction_6 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_1  4 happyReduction_7
happyReduction_7 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happyReduce 6 4 happyReduction_8
happyReduction_8 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_2  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Div happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Igual happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Maior happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Menor happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 6 4 happyReduction_19
happyReduction_19 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_1  4 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn4
		 (Null
	)

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Cons happy_var_2 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Head happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_2  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Tail happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  4 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (IsNull happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  4 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  4 happyReduction_26
happyReduction_26 _
	_
	 =  HappyAbsSyn4
		 (Null
	)

happyReduce_27 = happySpecReduce_2  4 happyReduction_27
happyReduction_27 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (MenorL happy_var_2
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  5 happyReduction_28
happyReduction_28 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (Cons happy_var_1 Null
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  5 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (Cons happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  6 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn6
		 (TBool
	)

happyReduce_31 = happySpecReduce_1  6 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn6
		 (TNum
	)

happyReduce_32 = happyReduce 5 6 happyReduction_32
happyReduction_32 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 43 43 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 7;
	TokenTrue -> cont 8;
	TokenFalse -> cont 9;
	TokenAdd -> cont 10;
	TokenAnd -> cont 11;
	TokenIf -> cont 12;
	TokenThen -> cont 13;
	TokenElse -> cont 14;
	TokenVar happy_dollar_dollar -> cont 15;
	TokenLam -> cont 16;
	TokenColon -> cont 17;
	TokenArrow -> cont 18;
	TokenTNum -> cont 19;
	TokenTBool -> cont 20;
	TokenLParen -> cont 21;
	TokenRParen -> cont 22;
	TokenSub -> cont 23;
	TokenMult -> cont 24;
	TokenDiv -> cont 25;
	TokenOr -> cont 26;
	TokenNot -> cont 27;
	TokenIgual -> cont 28;
	TokenMaior -> cont 29;
	TokenMenor -> cont 30;
	TokenComp -> cont 31;
	TokenLet -> cont 32;
	TokenIn -> cont 33;
	TokenNull -> cont 34;
	TokenCons -> cont 35;
	TokenHead -> cont 36;
	TokenTail -> cont 37;
	TokenIsNull -> cont 38;
	TokenLColchetes -> cont 39;
	TokenRColchetes -> cont 40;
	TokenVirgula -> cont 41;
	TokenMenorL -> cont 42;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 43 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a 
parseError _ = error "Erro sintático!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
