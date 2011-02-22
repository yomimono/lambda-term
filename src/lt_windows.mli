(*
 * lt_windows.mli
 * --------------
 * Copyright : (c) 2011, Jeremie Dimino <jeremie@dimino.org>
 * Licence   : BSD3
 *
 * This file is a part of Lambda-Term.
 *)

(** Windows specific functions *)

(** All these functions return [Lwt_sys.Not_available] on Unix. *)

(** Codepage functions *)

val get_acp : unit -> int
  (** Returns the current ANSI codepage. *)

val get_console_cp : unit -> int
  (** Returns the input codepage used by the console attached to the
      current process. *)

val set_console_cp : int -> unit
  (** Sets the input codepage used by the console attached to the
      current process. *)

val get_console_output_cp : unit -> int
  (** Returns the output codepage used by the console attached to the
      current process. *)

val set_console_output_cp : int -> unit
  (** Sets the output codepage used by the console attached to the
      current process. *)