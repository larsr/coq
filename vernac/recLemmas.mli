(************************************************************************)
(*         *   The Coq Proof Assistant / The Coq Development Team       *)
(*  v      *         Copyright INRIA, CNRS and contributors             *)
(* <O___,, * (see version control and CREDITS file for authors & dates) *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

val look_for_possibly_mutual_statements
  :  Evd.evar_map
  -> ('a * (EConstr.t * 'b)) list
  -> (bool * int list list * 'c option) option *
     ('a * (EConstr.t * 'b)) list * int list option
