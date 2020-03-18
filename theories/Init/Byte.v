(************************************************************************)
(*         *   The Coq Proof Assistant / The Coq Development Team       *)
(*  v      *         Copyright INRIA, CNRS and contributors             *)
(* <O___,, * (see version control and CREDITS file for authors & dates) *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

(** * Bytes *)

Require Import Coq.Init.Datatypes.
Require Import Coq.Init.Logic.
Require Import Coq.Init.Specif.
Require Coq.Init.Nat.

Declare ML Module "string_notation_plugin".

(** We define an inductive for use with the [String Notation] command
    which contains all ascii characters.  We use 256 constructors for
    efficiency and ease of conversion. *)

Declare Scope byte_scope.
Delimit Scope byte_scope with byte.

Inductive byte :=
| x00
| x01
| x02
| x03
| x04
| x05
| x06
| x07
| x08
| x09
| x0a
| x0b
| x0c
| x0d
| x0e
| x0f
| x10
| x11
| x12
| x13
| x14
| x15
| x16
| x17
| x18
| x19
| x1a
| x1b
| x1c
| x1d
| x1e
| x1f
| x20
| x21
| x22
| x23
| x24
| x25
| x26
| x27
| x28
| x29
| x2a
| x2b
| x2c
| x2d
| x2e
| x2f
| x30
| x31
| x32
| x33
| x34
| x35
| x36
| x37
| x38
| x39
| x3a
| x3b
| x3c
| x3d
| x3e
| x3f
| x40
| x41
| x42
| x43
| x44
| x45
| x46
| x47
| x48
| x49
| x4a
| x4b
| x4c
| x4d
| x4e
| x4f
| x50
| x51
| x52
| x53
| x54
| x55
| x56
| x57
| x58
| x59
| x5a
| x5b
| x5c
| x5d
| x5e
| x5f
| x60
| x61
| x62
| x63
| x64
| x65
| x66
| x67
| x68
| x69
| x6a
| x6b
| x6c
| x6d
| x6e
| x6f
| x70
| x71
| x72
| x73
| x74
| x75
| x76
| x77
| x78
| x79
| x7a
| x7b
| x7c
| x7d
| x7e
| x7f
| x80
| x81
| x82
| x83
| x84
| x85
| x86
| x87
| x88
| x89
| x8a
| x8b
| x8c
| x8d
| x8e
| x8f
| x90
| x91
| x92
| x93
| x94
| x95
| x96
| x97
| x98
| x99
| x9a
| x9b
| x9c
| x9d
| x9e
| x9f
| xa0
| xa1
| xa2
| xa3
| xa4
| xa5
| xa6
| xa7
| xa8
| xa9
| xaa
| xab
| xac
| xad
| xae
| xaf
| xb0
| xb1
| xb2
| xb3
| xb4
| xb5
| xb6
| xb7
| xb8
| xb9
| xba
| xbb
| xbc
| xbd
| xbe
| xbf
| xc0
| xc1
| xc2
| xc3
| xc4
| xc5
| xc6
| xc7
| xc8
| xc9
| xca
| xcb
| xcc
| xcd
| xce
| xcf
| xd0
| xd1
| xd2
| xd3
| xd4
| xd5
| xd6
| xd7
| xd8
| xd9
| xda
| xdb
| xdc
| xdd
| xde
| xdf
| xe0
| xe1
| xe2
| xe3
| xe4
| xe5
| xe6
| xe7
| xe8
| xe9
| xea
| xeb
| xec
| xed
| xee
| xef
| xf0
| xf1
| xf2
| xf3
| xf4
| xf5
| xf6
| xf7
| xf8
| xf9
| xfa
| xfb
| xfc
| xfd
| xfe
| xff
.

Bind Scope byte_scope with byte.

Register byte as core.byte.type.

Local Notation "0" := false.
Local Notation "1" := true.

(** We pick a definition that matches with [Ascii.ascii] *)
Definition of_bits (b : bool * (bool * (bool * (bool * (bool * (bool * (bool * bool))))))) : byte
  := match b with
     | (0,(0,(0,(0,(0,(0,(0,0))))))) => x00
     | (1,(0,(0,(0,(0,(0,(0,0))))))) => x01
     | (0,(1,(0,(0,(0,(0,(0,0))))))) => x02
     | (1,(1,(0,(0,(0,(0,(0,0))))))) => x03
     | (0,(0,(1,(0,(0,(0,(0,0))))))) => x04
     | (1,(0,(1,(0,(0,(0,(0,0))))))) => x05
     | (0,(1,(1,(0,(0,(0,(0,0))))))) => x06
     | (1,(1,(1,(0,(0,(0,(0,0))))))) => x07
     | (0,(0,(0,(1,(0,(0,(0,0))))))) => x08
     | (1,(0,(0,(1,(0,(0,(0,0))))))) => x09
     | (0,(1,(0,(1,(0,(0,(0,0))))))) => x0a
     | (1,(1,(0,(1,(0,(0,(0,0))))))) => x0b
     | (0,(0,(1,(1,(0,(0,(0,0))))))) => x0c
     | (1,(0,(1,(1,(0,(0,(0,0))))))) => x0d
     | (0,(1,(1,(1,(0,(0,(0,0))))))) => x0e
     | (1,(1,(1,(1,(0,(0,(0,0))))))) => x0f
     | (0,(0,(0,(0,(1,(0,(0,0))))))) => x10
     | (1,(0,(0,(0,(1,(0,(0,0))))))) => x11
     | (0,(1,(0,(0,(1,(0,(0,0))))))) => x12
     | (1,(1,(0,(0,(1,(0,(0,0))))))) => x13
     | (0,(0,(1,(0,(1,(0,(0,0))))))) => x14
     | (1,(0,(1,(0,(1,(0,(0,0))))))) => x15
     | (0,(1,(1,(0,(1,(0,(0,0))))))) => x16
     | (1,(1,(1,(0,(1,(0,(0,0))))))) => x17
     | (0,(0,(0,(1,(1,(0,(0,0))))))) => x18
     | (1,(0,(0,(1,(1,(0,(0,0))))))) => x19
     | (0,(1,(0,(1,(1,(0,(0,0))))))) => x1a
     | (1,(1,(0,(1,(1,(0,(0,0))))))) => x1b
     | (0,(0,(1,(1,(1,(0,(0,0))))))) => x1c
     | (1,(0,(1,(1,(1,(0,(0,0))))))) => x1d
     | (0,(1,(1,(1,(1,(0,(0,0))))))) => x1e
     | (1,(1,(1,(1,(1,(0,(0,0))))))) => x1f
     | (0,(0,(0,(0,(0,(1,(0,0))))))) => x20
     | (1,(0,(0,(0,(0,(1,(0,0))))))) => x21
     | (0,(1,(0,(0,(0,(1,(0,0))))))) => x22
     | (1,(1,(0,(0,(0,(1,(0,0))))))) => x23
     | (0,(0,(1,(0,(0,(1,(0,0))))))) => x24
     | (1,(0,(1,(0,(0,(1,(0,0))))))) => x25
     | (0,(1,(1,(0,(0,(1,(0,0))))))) => x26
     | (1,(1,(1,(0,(0,(1,(0,0))))))) => x27
     | (0,(0,(0,(1,(0,(1,(0,0))))))) => x28
     | (1,(0,(0,(1,(0,(1,(0,0))))))) => x29
     | (0,(1,(0,(1,(0,(1,(0,0))))))) => x2a
     | (1,(1,(0,(1,(0,(1,(0,0))))))) => x2b
     | (0,(0,(1,(1,(0,(1,(0,0))))))) => x2c
     | (1,(0,(1,(1,(0,(1,(0,0))))))) => x2d
     | (0,(1,(1,(1,(0,(1,(0,0))))))) => x2e
     | (1,(1,(1,(1,(0,(1,(0,0))))))) => x2f
     | (0,(0,(0,(0,(1,(1,(0,0))))))) => x30
     | (1,(0,(0,(0,(1,(1,(0,0))))))) => x31
     | (0,(1,(0,(0,(1,(1,(0,0))))))) => x32
     | (1,(1,(0,(0,(1,(1,(0,0))))))) => x33
     | (0,(0,(1,(0,(1,(1,(0,0))))))) => x34
     | (1,(0,(1,(0,(1,(1,(0,0))))))) => x35
     | (0,(1,(1,(0,(1,(1,(0,0))))))) => x36
     | (1,(1,(1,(0,(1,(1,(0,0))))))) => x37
     | (0,(0,(0,(1,(1,(1,(0,0))))))) => x38
     | (1,(0,(0,(1,(1,(1,(0,0))))))) => x39
     | (0,(1,(0,(1,(1,(1,(0,0))))))) => x3a
     | (1,(1,(0,(1,(1,(1,(0,0))))))) => x3b
     | (0,(0,(1,(1,(1,(1,(0,0))))))) => x3c
     | (1,(0,(1,(1,(1,(1,(0,0))))))) => x3d
     | (0,(1,(1,(1,(1,(1,(0,0))))))) => x3e
     | (1,(1,(1,(1,(1,(1,(0,0))))))) => x3f
     | (0,(0,(0,(0,(0,(0,(1,0))))))) => x40
     | (1,(0,(0,(0,(0,(0,(1,0))))))) => x41
     | (0,(1,(0,(0,(0,(0,(1,0))))))) => x42
     | (1,(1,(0,(0,(0,(0,(1,0))))))) => x43
     | (0,(0,(1,(0,(0,(0,(1,0))))))) => x44
     | (1,(0,(1,(0,(0,(0,(1,0))))))) => x45
     | (0,(1,(1,(0,(0,(0,(1,0))))))) => x46
     | (1,(1,(1,(0,(0,(0,(1,0))))))) => x47
     | (0,(0,(0,(1,(0,(0,(1,0))))))) => x48
     | (1,(0,(0,(1,(0,(0,(1,0))))))) => x49
     | (0,(1,(0,(1,(0,(0,(1,0))))))) => x4a
     | (1,(1,(0,(1,(0,(0,(1,0))))))) => x4b
     | (0,(0,(1,(1,(0,(0,(1,0))))))) => x4c
     | (1,(0,(1,(1,(0,(0,(1,0))))))) => x4d
     | (0,(1,(1,(1,(0,(0,(1,0))))))) => x4e
     | (1,(1,(1,(1,(0,(0,(1,0))))))) => x4f
     | (0,(0,(0,(0,(1,(0,(1,0))))))) => x50
     | (1,(0,(0,(0,(1,(0,(1,0))))))) => x51
     | (0,(1,(0,(0,(1,(0,(1,0))))))) => x52
     | (1,(1,(0,(0,(1,(0,(1,0))))))) => x53
     | (0,(0,(1,(0,(1,(0,(1,0))))))) => x54
     | (1,(0,(1,(0,(1,(0,(1,0))))))) => x55
     | (0,(1,(1,(0,(1,(0,(1,0))))))) => x56
     | (1,(1,(1,(0,(1,(0,(1,0))))))) => x57
     | (0,(0,(0,(1,(1,(0,(1,0))))))) => x58
     | (1,(0,(0,(1,(1,(0,(1,0))))))) => x59
     | (0,(1,(0,(1,(1,(0,(1,0))))))) => x5a
     | (1,(1,(0,(1,(1,(0,(1,0))))))) => x5b
     | (0,(0,(1,(1,(1,(0,(1,0))))))) => x5c
     | (1,(0,(1,(1,(1,(0,(1,0))))))) => x5d
     | (0,(1,(1,(1,(1,(0,(1,0))))))) => x5e
     | (1,(1,(1,(1,(1,(0,(1,0))))))) => x5f
     | (0,(0,(0,(0,(0,(1,(1,0))))))) => x60
     | (1,(0,(0,(0,(0,(1,(1,0))))))) => x61
     | (0,(1,(0,(0,(0,(1,(1,0))))))) => x62
     | (1,(1,(0,(0,(0,(1,(1,0))))))) => x63
     | (0,(0,(1,(0,(0,(1,(1,0))))))) => x64
     | (1,(0,(1,(0,(0,(1,(1,0))))))) => x65
     | (0,(1,(1,(0,(0,(1,(1,0))))))) => x66
     | (1,(1,(1,(0,(0,(1,(1,0))))))) => x67
     | (0,(0,(0,(1,(0,(1,(1,0))))))) => x68
     | (1,(0,(0,(1,(0,(1,(1,0))))))) => x69
     | (0,(1,(0,(1,(0,(1,(1,0))))))) => x6a
     | (1,(1,(0,(1,(0,(1,(1,0))))))) => x6b
     | (0,(0,(1,(1,(0,(1,(1,0))))))) => x6c
     | (1,(0,(1,(1,(0,(1,(1,0))))))) => x6d
     | (0,(1,(1,(1,(0,(1,(1,0))))))) => x6e
     | (1,(1,(1,(1,(0,(1,(1,0))))))) => x6f
     | (0,(0,(0,(0,(1,(1,(1,0))))))) => x70
     | (1,(0,(0,(0,(1,(1,(1,0))))))) => x71
     | (0,(1,(0,(0,(1,(1,(1,0))))))) => x72
     | (1,(1,(0,(0,(1,(1,(1,0))))))) => x73
     | (0,(0,(1,(0,(1,(1,(1,0))))))) => x74
     | (1,(0,(1,(0,(1,(1,(1,0))))))) => x75
     | (0,(1,(1,(0,(1,(1,(1,0))))))) => x76
     | (1,(1,(1,(0,(1,(1,(1,0))))))) => x77
     | (0,(0,(0,(1,(1,(1,(1,0))))))) => x78
     | (1,(0,(0,(1,(1,(1,(1,0))))))) => x79
     | (0,(1,(0,(1,(1,(1,(1,0))))))) => x7a
     | (1,(1,(0,(1,(1,(1,(1,0))))))) => x7b
     | (0,(0,(1,(1,(1,(1,(1,0))))))) => x7c
     | (1,(0,(1,(1,(1,(1,(1,0))))))) => x7d
     | (0,(1,(1,(1,(1,(1,(1,0))))))) => x7e
     | (1,(1,(1,(1,(1,(1,(1,0))))))) => x7f
     | (0,(0,(0,(0,(0,(0,(0,1))))))) => x80
     | (1,(0,(0,(0,(0,(0,(0,1))))))) => x81
     | (0,(1,(0,(0,(0,(0,(0,1))))))) => x82
     | (1,(1,(0,(0,(0,(0,(0,1))))))) => x83
     | (0,(0,(1,(0,(0,(0,(0,1))))))) => x84
     | (1,(0,(1,(0,(0,(0,(0,1))))))) => x85
     | (0,(1,(1,(0,(0,(0,(0,1))))))) => x86
     | (1,(1,(1,(0,(0,(0,(0,1))))))) => x87
     | (0,(0,(0,(1,(0,(0,(0,1))))))) => x88
     | (1,(0,(0,(1,(0,(0,(0,1))))))) => x89
     | (0,(1,(0,(1,(0,(0,(0,1))))))) => x8a
     | (1,(1,(0,(1,(0,(0,(0,1))))))) => x8b
     | (0,(0,(1,(1,(0,(0,(0,1))))))) => x8c
     | (1,(0,(1,(1,(0,(0,(0,1))))))) => x8d
     | (0,(1,(1,(1,(0,(0,(0,1))))))) => x8e
     | (1,(1,(1,(1,(0,(0,(0,1))))))) => x8f
     | (0,(0,(0,(0,(1,(0,(0,1))))))) => x90
     | (1,(0,(0,(0,(1,(0,(0,1))))))) => x91
     | (0,(1,(0,(0,(1,(0,(0,1))))))) => x92
     | (1,(1,(0,(0,(1,(0,(0,1))))))) => x93
     | (0,(0,(1,(0,(1,(0,(0,1))))))) => x94
     | (1,(0,(1,(0,(1,(0,(0,1))))))) => x95
     | (0,(1,(1,(0,(1,(0,(0,1))))))) => x96
     | (1,(1,(1,(0,(1,(0,(0,1))))))) => x97
     | (0,(0,(0,(1,(1,(0,(0,1))))))) => x98
     | (1,(0,(0,(1,(1,(0,(0,1))))))) => x99
     | (0,(1,(0,(1,(1,(0,(0,1))))))) => x9a
     | (1,(1,(0,(1,(1,(0,(0,1))))))) => x9b
     | (0,(0,(1,(1,(1,(0,(0,1))))))) => x9c
     | (1,(0,(1,(1,(1,(0,(0,1))))))) => x9d
     | (0,(1,(1,(1,(1,(0,(0,1))))))) => x9e
     | (1,(1,(1,(1,(1,(0,(0,1))))))) => x9f
     | (0,(0,(0,(0,(0,(1,(0,1))))))) => xa0
     | (1,(0,(0,(0,(0,(1,(0,1))))))) => xa1
     | (0,(1,(0,(0,(0,(1,(0,1))))))) => xa2
     | (1,(1,(0,(0,(0,(1,(0,1))))))) => xa3
     | (0,(0,(1,(0,(0,(1,(0,1))))))) => xa4
     | (1,(0,(1,(0,(0,(1,(0,1))))))) => xa5
     | (0,(1,(1,(0,(0,(1,(0,1))))))) => xa6
     | (1,(1,(1,(0,(0,(1,(0,1))))))) => xa7
     | (0,(0,(0,(1,(0,(1,(0,1))))))) => xa8
     | (1,(0,(0,(1,(0,(1,(0,1))))))) => xa9
     | (0,(1,(0,(1,(0,(1,(0,1))))))) => xaa
     | (1,(1,(0,(1,(0,(1,(0,1))))))) => xab
     | (0,(0,(1,(1,(0,(1,(0,1))))))) => xac
     | (1,(0,(1,(1,(0,(1,(0,1))))))) => xad
     | (0,(1,(1,(1,(0,(1,(0,1))))))) => xae
     | (1,(1,(1,(1,(0,(1,(0,1))))))) => xaf
     | (0,(0,(0,(0,(1,(1,(0,1))))))) => xb0
     | (1,(0,(0,(0,(1,(1,(0,1))))))) => xb1
     | (0,(1,(0,(0,(1,(1,(0,1))))))) => xb2
     | (1,(1,(0,(0,(1,(1,(0,1))))))) => xb3
     | (0,(0,(1,(0,(1,(1,(0,1))))))) => xb4
     | (1,(0,(1,(0,(1,(1,(0,1))))))) => xb5
     | (0,(1,(1,(0,(1,(1,(0,1))))))) => xb6
     | (1,(1,(1,(0,(1,(1,(0,1))))))) => xb7
     | (0,(0,(0,(1,(1,(1,(0,1))))))) => xb8
     | (1,(0,(0,(1,(1,(1,(0,1))))))) => xb9
     | (0,(1,(0,(1,(1,(1,(0,1))))))) => xba
     | (1,(1,(0,(1,(1,(1,(0,1))))))) => xbb
     | (0,(0,(1,(1,(1,(1,(0,1))))))) => xbc
     | (1,(0,(1,(1,(1,(1,(0,1))))))) => xbd
     | (0,(1,(1,(1,(1,(1,(0,1))))))) => xbe
     | (1,(1,(1,(1,(1,(1,(0,1))))))) => xbf
     | (0,(0,(0,(0,(0,(0,(1,1))))))) => xc0
     | (1,(0,(0,(0,(0,(0,(1,1))))))) => xc1
     | (0,(1,(0,(0,(0,(0,(1,1))))))) => xc2
     | (1,(1,(0,(0,(0,(0,(1,1))))))) => xc3
     | (0,(0,(1,(0,(0,(0,(1,1))))))) => xc4
     | (1,(0,(1,(0,(0,(0,(1,1))))))) => xc5
     | (0,(1,(1,(0,(0,(0,(1,1))))))) => xc6
     | (1,(1,(1,(0,(0,(0,(1,1))))))) => xc7
     | (0,(0,(0,(1,(0,(0,(1,1))))))) => xc8
     | (1,(0,(0,(1,(0,(0,(1,1))))))) => xc9
     | (0,(1,(0,(1,(0,(0,(1,1))))))) => xca
     | (1,(1,(0,(1,(0,(0,(1,1))))))) => xcb
     | (0,(0,(1,(1,(0,(0,(1,1))))))) => xcc
     | (1,(0,(1,(1,(0,(0,(1,1))))))) => xcd
     | (0,(1,(1,(1,(0,(0,(1,1))))))) => xce
     | (1,(1,(1,(1,(0,(0,(1,1))))))) => xcf
     | (0,(0,(0,(0,(1,(0,(1,1))))))) => xd0
     | (1,(0,(0,(0,(1,(0,(1,1))))))) => xd1
     | (0,(1,(0,(0,(1,(0,(1,1))))))) => xd2
     | (1,(1,(0,(0,(1,(0,(1,1))))))) => xd3
     | (0,(0,(1,(0,(1,(0,(1,1))))))) => xd4
     | (1,(0,(1,(0,(1,(0,(1,1))))))) => xd5
     | (0,(1,(1,(0,(1,(0,(1,1))))))) => xd6
     | (1,(1,(1,(0,(1,(0,(1,1))))))) => xd7
     | (0,(0,(0,(1,(1,(0,(1,1))))))) => xd8
     | (1,(0,(0,(1,(1,(0,(1,1))))))) => xd9
     | (0,(1,(0,(1,(1,(0,(1,1))))))) => xda
     | (1,(1,(0,(1,(1,(0,(1,1))))))) => xdb
     | (0,(0,(1,(1,(1,(0,(1,1))))))) => xdc
     | (1,(0,(1,(1,(1,(0,(1,1))))))) => xdd
     | (0,(1,(1,(1,(1,(0,(1,1))))))) => xde
     | (1,(1,(1,(1,(1,(0,(1,1))))))) => xdf
     | (0,(0,(0,(0,(0,(1,(1,1))))))) => xe0
     | (1,(0,(0,(0,(0,(1,(1,1))))))) => xe1
     | (0,(1,(0,(0,(0,(1,(1,1))))))) => xe2
     | (1,(1,(0,(0,(0,(1,(1,1))))))) => xe3
     | (0,(0,(1,(0,(0,(1,(1,1))))))) => xe4
     | (1,(0,(1,(0,(0,(1,(1,1))))))) => xe5
     | (0,(1,(1,(0,(0,(1,(1,1))))))) => xe6
     | (1,(1,(1,(0,(0,(1,(1,1))))))) => xe7
     | (0,(0,(0,(1,(0,(1,(1,1))))))) => xe8
     | (1,(0,(0,(1,(0,(1,(1,1))))))) => xe9
     | (0,(1,(0,(1,(0,(1,(1,1))))))) => xea
     | (1,(1,(0,(1,(0,(1,(1,1))))))) => xeb
     | (0,(0,(1,(1,(0,(1,(1,1))))))) => xec
     | (1,(0,(1,(1,(0,(1,(1,1))))))) => xed
     | (0,(1,(1,(1,(0,(1,(1,1))))))) => xee
     | (1,(1,(1,(1,(0,(1,(1,1))))))) => xef
     | (0,(0,(0,(0,(1,(1,(1,1))))))) => xf0
     | (1,(0,(0,(0,(1,(1,(1,1))))))) => xf1
     | (0,(1,(0,(0,(1,(1,(1,1))))))) => xf2
     | (1,(1,(0,(0,(1,(1,(1,1))))))) => xf3
     | (0,(0,(1,(0,(1,(1,(1,1))))))) => xf4
     | (1,(0,(1,(0,(1,(1,(1,1))))))) => xf5
     | (0,(1,(1,(0,(1,(1,(1,1))))))) => xf6
     | (1,(1,(1,(0,(1,(1,(1,1))))))) => xf7
     | (0,(0,(0,(1,(1,(1,(1,1))))))) => xf8
     | (1,(0,(0,(1,(1,(1,(1,1))))))) => xf9
     | (0,(1,(0,(1,(1,(1,(1,1))))))) => xfa
     | (1,(1,(0,(1,(1,(1,(1,1))))))) => xfb
     | (0,(0,(1,(1,(1,(1,(1,1))))))) => xfc
     | (1,(0,(1,(1,(1,(1,(1,1))))))) => xfd
     | (0,(1,(1,(1,(1,(1,(1,1))))))) => xfe
     | (1,(1,(1,(1,(1,(1,(1,1))))))) => xff
     end.

Definition to_bits (b : byte) : bool * (bool * (bool * (bool * (bool * (bool * (bool * bool))))))
  := match b with
     | x00 => (0,(0,(0,(0,(0,(0,(0,0)))))))
     | x01 => (1,(0,(0,(0,(0,(0,(0,0)))))))
     | x02 => (0,(1,(0,(0,(0,(0,(0,0)))))))
     | x03 => (1,(1,(0,(0,(0,(0,(0,0)))))))
     | x04 => (0,(0,(1,(0,(0,(0,(0,0)))))))
     | x05 => (1,(0,(1,(0,(0,(0,(0,0)))))))
     | x06 => (0,(1,(1,(0,(0,(0,(0,0)))))))
     | x07 => (1,(1,(1,(0,(0,(0,(0,0)))))))
     | x08 => (0,(0,(0,(1,(0,(0,(0,0)))))))
     | x09 => (1,(0,(0,(1,(0,(0,(0,0)))))))
     | x0a => (0,(1,(0,(1,(0,(0,(0,0)))))))
     | x0b => (1,(1,(0,(1,(0,(0,(0,0)))))))
     | x0c => (0,(0,(1,(1,(0,(0,(0,0)))))))
     | x0d => (1,(0,(1,(1,(0,(0,(0,0)))))))
     | x0e => (0,(1,(1,(1,(0,(0,(0,0)))))))
     | x0f => (1,(1,(1,(1,(0,(0,(0,0)))))))
     | x10 => (0,(0,(0,(0,(1,(0,(0,0)))))))
     | x11 => (1,(0,(0,(0,(1,(0,(0,0)))))))
     | x12 => (0,(1,(0,(0,(1,(0,(0,0)))))))
     | x13 => (1,(1,(0,(0,(1,(0,(0,0)))))))
     | x14 => (0,(0,(1,(0,(1,(0,(0,0)))))))
     | x15 => (1,(0,(1,(0,(1,(0,(0,0)))))))
     | x16 => (0,(1,(1,(0,(1,(0,(0,0)))))))
     | x17 => (1,(1,(1,(0,(1,(0,(0,0)))))))
     | x18 => (0,(0,(0,(1,(1,(0,(0,0)))))))
     | x19 => (1,(0,(0,(1,(1,(0,(0,0)))))))
     | x1a => (0,(1,(0,(1,(1,(0,(0,0)))))))
     | x1b => (1,(1,(0,(1,(1,(0,(0,0)))))))
     | x1c => (0,(0,(1,(1,(1,(0,(0,0)))))))
     | x1d => (1,(0,(1,(1,(1,(0,(0,0)))))))
     | x1e => (0,(1,(1,(1,(1,(0,(0,0)))))))
     | x1f => (1,(1,(1,(1,(1,(0,(0,0)))))))
     | x20 => (0,(0,(0,(0,(0,(1,(0,0)))))))
     | x21 => (1,(0,(0,(0,(0,(1,(0,0)))))))
     | x22 => (0,(1,(0,(0,(0,(1,(0,0)))))))
     | x23 => (1,(1,(0,(0,(0,(1,(0,0)))))))
     | x24 => (0,(0,(1,(0,(0,(1,(0,0)))))))
     | x25 => (1,(0,(1,(0,(0,(1,(0,0)))))))
     | x26 => (0,(1,(1,(0,(0,(1,(0,0)))))))
     | x27 => (1,(1,(1,(0,(0,(1,(0,0)))))))
     | x28 => (0,(0,(0,(1,(0,(1,(0,0)))))))
     | x29 => (1,(0,(0,(1,(0,(1,(0,0)))))))
     | x2a => (0,(1,(0,(1,(0,(1,(0,0)))))))
     | x2b => (1,(1,(0,(1,(0,(1,(0,0)))))))
     | x2c => (0,(0,(1,(1,(0,(1,(0,0)))))))
     | x2d => (1,(0,(1,(1,(0,(1,(0,0)))))))
     | x2e => (0,(1,(1,(1,(0,(1,(0,0)))))))
     | x2f => (1,(1,(1,(1,(0,(1,(0,0)))))))
     | x30 => (0,(0,(0,(0,(1,(1,(0,0)))))))
     | x31 => (1,(0,(0,(0,(1,(1,(0,0)))))))
     | x32 => (0,(1,(0,(0,(1,(1,(0,0)))))))
     | x33 => (1,(1,(0,(0,(1,(1,(0,0)))))))
     | x34 => (0,(0,(1,(0,(1,(1,(0,0)))))))
     | x35 => (1,(0,(1,(0,(1,(1,(0,0)))))))
     | x36 => (0,(1,(1,(0,(1,(1,(0,0)))))))
     | x37 => (1,(1,(1,(0,(1,(1,(0,0)))))))
     | x38 => (0,(0,(0,(1,(1,(1,(0,0)))))))
     | x39 => (1,(0,(0,(1,(1,(1,(0,0)))))))
     | x3a => (0,(1,(0,(1,(1,(1,(0,0)))))))
     | x3b => (1,(1,(0,(1,(1,(1,(0,0)))))))
     | x3c => (0,(0,(1,(1,(1,(1,(0,0)))))))
     | x3d => (1,(0,(1,(1,(1,(1,(0,0)))))))
     | x3e => (0,(1,(1,(1,(1,(1,(0,0)))))))
     | x3f => (1,(1,(1,(1,(1,(1,(0,0)))))))
     | x40 => (0,(0,(0,(0,(0,(0,(1,0)))))))
     | x41 => (1,(0,(0,(0,(0,(0,(1,0)))))))
     | x42 => (0,(1,(0,(0,(0,(0,(1,0)))))))
     | x43 => (1,(1,(0,(0,(0,(0,(1,0)))))))
     | x44 => (0,(0,(1,(0,(0,(0,(1,0)))))))
     | x45 => (1,(0,(1,(0,(0,(0,(1,0)))))))
     | x46 => (0,(1,(1,(0,(0,(0,(1,0)))))))
     | x47 => (1,(1,(1,(0,(0,(0,(1,0)))))))
     | x48 => (0,(0,(0,(1,(0,(0,(1,0)))))))
     | x49 => (1,(0,(0,(1,(0,(0,(1,0)))))))
     | x4a => (0,(1,(0,(1,(0,(0,(1,0)))))))
     | x4b => (1,(1,(0,(1,(0,(0,(1,0)))))))
     | x4c => (0,(0,(1,(1,(0,(0,(1,0)))))))
     | x4d => (1,(0,(1,(1,(0,(0,(1,0)))))))
     | x4e => (0,(1,(1,(1,(0,(0,(1,0)))))))
     | x4f => (1,(1,(1,(1,(0,(0,(1,0)))))))
     | x50 => (0,(0,(0,(0,(1,(0,(1,0)))))))
     | x51 => (1,(0,(0,(0,(1,(0,(1,0)))))))
     | x52 => (0,(1,(0,(0,(1,(0,(1,0)))))))
     | x53 => (1,(1,(0,(0,(1,(0,(1,0)))))))
     | x54 => (0,(0,(1,(0,(1,(0,(1,0)))))))
     | x55 => (1,(0,(1,(0,(1,(0,(1,0)))))))
     | x56 => (0,(1,(1,(0,(1,(0,(1,0)))))))
     | x57 => (1,(1,(1,(0,(1,(0,(1,0)))))))
     | x58 => (0,(0,(0,(1,(1,(0,(1,0)))))))
     | x59 => (1,(0,(0,(1,(1,(0,(1,0)))))))
     | x5a => (0,(1,(0,(1,(1,(0,(1,0)))))))
     | x5b => (1,(1,(0,(1,(1,(0,(1,0)))))))
     | x5c => (0,(0,(1,(1,(1,(0,(1,0)))))))
     | x5d => (1,(0,(1,(1,(1,(0,(1,0)))))))
     | x5e => (0,(1,(1,(1,(1,(0,(1,0)))))))
     | x5f => (1,(1,(1,(1,(1,(0,(1,0)))))))
     | x60 => (0,(0,(0,(0,(0,(1,(1,0)))))))
     | x61 => (1,(0,(0,(0,(0,(1,(1,0)))))))
     | x62 => (0,(1,(0,(0,(0,(1,(1,0)))))))
     | x63 => (1,(1,(0,(0,(0,(1,(1,0)))))))
     | x64 => (0,(0,(1,(0,(0,(1,(1,0)))))))
     | x65 => (1,(0,(1,(0,(0,(1,(1,0)))))))
     | x66 => (0,(1,(1,(0,(0,(1,(1,0)))))))
     | x67 => (1,(1,(1,(0,(0,(1,(1,0)))))))
     | x68 => (0,(0,(0,(1,(0,(1,(1,0)))))))
     | x69 => (1,(0,(0,(1,(0,(1,(1,0)))))))
     | x6a => (0,(1,(0,(1,(0,(1,(1,0)))))))
     | x6b => (1,(1,(0,(1,(0,(1,(1,0)))))))
     | x6c => (0,(0,(1,(1,(0,(1,(1,0)))))))
     | x6d => (1,(0,(1,(1,(0,(1,(1,0)))))))
     | x6e => (0,(1,(1,(1,(0,(1,(1,0)))))))
     | x6f => (1,(1,(1,(1,(0,(1,(1,0)))))))
     | x70 => (0,(0,(0,(0,(1,(1,(1,0)))))))
     | x71 => (1,(0,(0,(0,(1,(1,(1,0)))))))
     | x72 => (0,(1,(0,(0,(1,(1,(1,0)))))))
     | x73 => (1,(1,(0,(0,(1,(1,(1,0)))))))
     | x74 => (0,(0,(1,(0,(1,(1,(1,0)))))))
     | x75 => (1,(0,(1,(0,(1,(1,(1,0)))))))
     | x76 => (0,(1,(1,(0,(1,(1,(1,0)))))))
     | x77 => (1,(1,(1,(0,(1,(1,(1,0)))))))
     | x78 => (0,(0,(0,(1,(1,(1,(1,0)))))))
     | x79 => (1,(0,(0,(1,(1,(1,(1,0)))))))
     | x7a => (0,(1,(0,(1,(1,(1,(1,0)))))))
     | x7b => (1,(1,(0,(1,(1,(1,(1,0)))))))
     | x7c => (0,(0,(1,(1,(1,(1,(1,0)))))))
     | x7d => (1,(0,(1,(1,(1,(1,(1,0)))))))
     | x7e => (0,(1,(1,(1,(1,(1,(1,0)))))))
     | x7f => (1,(1,(1,(1,(1,(1,(1,0)))))))
     | x80 => (0,(0,(0,(0,(0,(0,(0,1)))))))
     | x81 => (1,(0,(0,(0,(0,(0,(0,1)))))))
     | x82 => (0,(1,(0,(0,(0,(0,(0,1)))))))
     | x83 => (1,(1,(0,(0,(0,(0,(0,1)))))))
     | x84 => (0,(0,(1,(0,(0,(0,(0,1)))))))
     | x85 => (1,(0,(1,(0,(0,(0,(0,1)))))))
     | x86 => (0,(1,(1,(0,(0,(0,(0,1)))))))
     | x87 => (1,(1,(1,(0,(0,(0,(0,1)))))))
     | x88 => (0,(0,(0,(1,(0,(0,(0,1)))))))
     | x89 => (1,(0,(0,(1,(0,(0,(0,1)))))))
     | x8a => (0,(1,(0,(1,(0,(0,(0,1)))))))
     | x8b => (1,(1,(0,(1,(0,(0,(0,1)))))))
     | x8c => (0,(0,(1,(1,(0,(0,(0,1)))))))
     | x8d => (1,(0,(1,(1,(0,(0,(0,1)))))))
     | x8e => (0,(1,(1,(1,(0,(0,(0,1)))))))
     | x8f => (1,(1,(1,(1,(0,(0,(0,1)))))))
     | x90 => (0,(0,(0,(0,(1,(0,(0,1)))))))
     | x91 => (1,(0,(0,(0,(1,(0,(0,1)))))))
     | x92 => (0,(1,(0,(0,(1,(0,(0,1)))))))
     | x93 => (1,(1,(0,(0,(1,(0,(0,1)))))))
     | x94 => (0,(0,(1,(0,(1,(0,(0,1)))))))
     | x95 => (1,(0,(1,(0,(1,(0,(0,1)))))))
     | x96 => (0,(1,(1,(0,(1,(0,(0,1)))))))
     | x97 => (1,(1,(1,(0,(1,(0,(0,1)))))))
     | x98 => (0,(0,(0,(1,(1,(0,(0,1)))))))
     | x99 => (1,(0,(0,(1,(1,(0,(0,1)))))))
     | x9a => (0,(1,(0,(1,(1,(0,(0,1)))))))
     | x9b => (1,(1,(0,(1,(1,(0,(0,1)))))))
     | x9c => (0,(0,(1,(1,(1,(0,(0,1)))))))
     | x9d => (1,(0,(1,(1,(1,(0,(0,1)))))))
     | x9e => (0,(1,(1,(1,(1,(0,(0,1)))))))
     | x9f => (1,(1,(1,(1,(1,(0,(0,1)))))))
     | xa0 => (0,(0,(0,(0,(0,(1,(0,1)))))))
     | xa1 => (1,(0,(0,(0,(0,(1,(0,1)))))))
     | xa2 => (0,(1,(0,(0,(0,(1,(0,1)))))))
     | xa3 => (1,(1,(0,(0,(0,(1,(0,1)))))))
     | xa4 => (0,(0,(1,(0,(0,(1,(0,1)))))))
     | xa5 => (1,(0,(1,(0,(0,(1,(0,1)))))))
     | xa6 => (0,(1,(1,(0,(0,(1,(0,1)))))))
     | xa7 => (1,(1,(1,(0,(0,(1,(0,1)))))))
     | xa8 => (0,(0,(0,(1,(0,(1,(0,1)))))))
     | xa9 => (1,(0,(0,(1,(0,(1,(0,1)))))))
     | xaa => (0,(1,(0,(1,(0,(1,(0,1)))))))
     | xab => (1,(1,(0,(1,(0,(1,(0,1)))))))
     | xac => (0,(0,(1,(1,(0,(1,(0,1)))))))
     | xad => (1,(0,(1,(1,(0,(1,(0,1)))))))
     | xae => (0,(1,(1,(1,(0,(1,(0,1)))))))
     | xaf => (1,(1,(1,(1,(0,(1,(0,1)))))))
     | xb0 => (0,(0,(0,(0,(1,(1,(0,1)))))))
     | xb1 => (1,(0,(0,(0,(1,(1,(0,1)))))))
     | xb2 => (0,(1,(0,(0,(1,(1,(0,1)))))))
     | xb3 => (1,(1,(0,(0,(1,(1,(0,1)))))))
     | xb4 => (0,(0,(1,(0,(1,(1,(0,1)))))))
     | xb5 => (1,(0,(1,(0,(1,(1,(0,1)))))))
     | xb6 => (0,(1,(1,(0,(1,(1,(0,1)))))))
     | xb7 => (1,(1,(1,(0,(1,(1,(0,1)))))))
     | xb8 => (0,(0,(0,(1,(1,(1,(0,1)))))))
     | xb9 => (1,(0,(0,(1,(1,(1,(0,1)))))))
     | xba => (0,(1,(0,(1,(1,(1,(0,1)))))))
     | xbb => (1,(1,(0,(1,(1,(1,(0,1)))))))
     | xbc => (0,(0,(1,(1,(1,(1,(0,1)))))))
     | xbd => (1,(0,(1,(1,(1,(1,(0,1)))))))
     | xbe => (0,(1,(1,(1,(1,(1,(0,1)))))))
     | xbf => (1,(1,(1,(1,(1,(1,(0,1)))))))
     | xc0 => (0,(0,(0,(0,(0,(0,(1,1)))))))
     | xc1 => (1,(0,(0,(0,(0,(0,(1,1)))))))
     | xc2 => (0,(1,(0,(0,(0,(0,(1,1)))))))
     | xc3 => (1,(1,(0,(0,(0,(0,(1,1)))))))
     | xc4 => (0,(0,(1,(0,(0,(0,(1,1)))))))
     | xc5 => (1,(0,(1,(0,(0,(0,(1,1)))))))
     | xc6 => (0,(1,(1,(0,(0,(0,(1,1)))))))
     | xc7 => (1,(1,(1,(0,(0,(0,(1,1)))))))
     | xc8 => (0,(0,(0,(1,(0,(0,(1,1)))))))
     | xc9 => (1,(0,(0,(1,(0,(0,(1,1)))))))
     | xca => (0,(1,(0,(1,(0,(0,(1,1)))))))
     | xcb => (1,(1,(0,(1,(0,(0,(1,1)))))))
     | xcc => (0,(0,(1,(1,(0,(0,(1,1)))))))
     | xcd => (1,(0,(1,(1,(0,(0,(1,1)))))))
     | xce => (0,(1,(1,(1,(0,(0,(1,1)))))))
     | xcf => (1,(1,(1,(1,(0,(0,(1,1)))))))
     | xd0 => (0,(0,(0,(0,(1,(0,(1,1)))))))
     | xd1 => (1,(0,(0,(0,(1,(0,(1,1)))))))
     | xd2 => (0,(1,(0,(0,(1,(0,(1,1)))))))
     | xd3 => (1,(1,(0,(0,(1,(0,(1,1)))))))
     | xd4 => (0,(0,(1,(0,(1,(0,(1,1)))))))
     | xd5 => (1,(0,(1,(0,(1,(0,(1,1)))))))
     | xd6 => (0,(1,(1,(0,(1,(0,(1,1)))))))
     | xd7 => (1,(1,(1,(0,(1,(0,(1,1)))))))
     | xd8 => (0,(0,(0,(1,(1,(0,(1,1)))))))
     | xd9 => (1,(0,(0,(1,(1,(0,(1,1)))))))
     | xda => (0,(1,(0,(1,(1,(0,(1,1)))))))
     | xdb => (1,(1,(0,(1,(1,(0,(1,1)))))))
     | xdc => (0,(0,(1,(1,(1,(0,(1,1)))))))
     | xdd => (1,(0,(1,(1,(1,(0,(1,1)))))))
     | xde => (0,(1,(1,(1,(1,(0,(1,1)))))))
     | xdf => (1,(1,(1,(1,(1,(0,(1,1)))))))
     | xe0 => (0,(0,(0,(0,(0,(1,(1,1)))))))
     | xe1 => (1,(0,(0,(0,(0,(1,(1,1)))))))
     | xe2 => (0,(1,(0,(0,(0,(1,(1,1)))))))
     | xe3 => (1,(1,(0,(0,(0,(1,(1,1)))))))
     | xe4 => (0,(0,(1,(0,(0,(1,(1,1)))))))
     | xe5 => (1,(0,(1,(0,(0,(1,(1,1)))))))
     | xe6 => (0,(1,(1,(0,(0,(1,(1,1)))))))
     | xe7 => (1,(1,(1,(0,(0,(1,(1,1)))))))
     | xe8 => (0,(0,(0,(1,(0,(1,(1,1)))))))
     | xe9 => (1,(0,(0,(1,(0,(1,(1,1)))))))
     | xea => (0,(1,(0,(1,(0,(1,(1,1)))))))
     | xeb => (1,(1,(0,(1,(0,(1,(1,1)))))))
     | xec => (0,(0,(1,(1,(0,(1,(1,1)))))))
     | xed => (1,(0,(1,(1,(0,(1,(1,1)))))))
     | xee => (0,(1,(1,(1,(0,(1,(1,1)))))))
     | xef => (1,(1,(1,(1,(0,(1,(1,1)))))))
     | xf0 => (0,(0,(0,(0,(1,(1,(1,1)))))))
     | xf1 => (1,(0,(0,(0,(1,(1,(1,1)))))))
     | xf2 => (0,(1,(0,(0,(1,(1,(1,1)))))))
     | xf3 => (1,(1,(0,(0,(1,(1,(1,1)))))))
     | xf4 => (0,(0,(1,(0,(1,(1,(1,1)))))))
     | xf5 => (1,(0,(1,(0,(1,(1,(1,1)))))))
     | xf6 => (0,(1,(1,(0,(1,(1,(1,1)))))))
     | xf7 => (1,(1,(1,(0,(1,(1,(1,1)))))))
     | xf8 => (0,(0,(0,(1,(1,(1,(1,1)))))))
     | xf9 => (1,(0,(0,(1,(1,(1,(1,1)))))))
     | xfa => (0,(1,(0,(1,(1,(1,(1,1)))))))
     | xfb => (1,(1,(0,(1,(1,(1,(1,1)))))))
     | xfc => (0,(0,(1,(1,(1,(1,(1,1)))))))
     | xfd => (1,(0,(1,(1,(1,(1,(1,1)))))))
     | xfe => (0,(1,(1,(1,(1,(1,(1,1)))))))
     | xff => (1,(1,(1,(1,(1,(1,(1,1)))))))
     end.

Lemma of_bits_to_bits (b : byte) : of_bits (to_bits b) = b.
Proof. destruct b; exact eq_refl. Qed.

Lemma to_bits_of_bits (b : _) : to_bits (of_bits b) = b.
Proof.
  repeat match goal with
         | p : prod _ _ |- _ => destruct p
         | b : bool |- _ => destruct b
         end;
    exact eq_refl.
Qed.

Definition byte_of_byte (b : byte) : byte := b.

Module Export ByteSyntaxNotations.
  String Notation byte byte_of_byte byte_of_byte : byte_scope.
End ByteSyntaxNotations.
