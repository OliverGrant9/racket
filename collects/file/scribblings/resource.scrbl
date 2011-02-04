#lang scribble/doc
@(require "common.ss"
          (for-label file/resource))

@(define-syntax-rule (compat section indexed-racket)
   @elem{For backward compatibilty, the
 result is @racket[#f] for platforms other than Windows, when
 @racket[file] is not @racket[#f], or when @racket[section] is not
 @indexed-racket["HKEY_CLASSES_ROOT"],
 @indexed-racket["HKEY_CURRENT_CONFIG"],
 @indexed-racket["HKEY_CURRENT_USER"],
 @indexed-racket["HKEY_LOCAL_MACHINE"], or @indexed-racket["HKEY_USERS"].})

@title[#:tag "resource"]{Windows Registry}

@defmodule[file/resource]

@defproc[(get-resource [section string?]
                       [entry string?]
                       [value-box (or/f #f (box/c (or/c string? bytes? exact-integer?))) #f]
                       [file (or/c #f fail-path?) #f]
                       [#:type type (or/c 'string 'bytes 'integer) _derived-from-value-box])
         (or/c #f string? bytes? exact-integer? #t)]{

Gets a value from the Windows registry. @compat[section indexed-racket]

The resource value is keyed on the combination of @racket[section] and
 @racket[entry].  The result is @racket[#f] if no value is found for
 the specified @racket[section] and @racket[entry]. If @racket[value-box]
 is a box, then the result is @racket[#t] if a value is found, and the
 box is filled with the value; when @racket[value-box] is @racket[#f], the result is the found
 value.

The @racket[type] argument determines how a value in the registry is
 converted to a Racket value. If @racket[value-box] is a box, then the
 default @racket[type] is derived from the initial box content,
 otherwise the default @racket[type] is @racket['string].

Registry values of any format can be extracted. Values using the
 registry format @tt{REG_SZ} are treated as strings, and values with
 the format @tt{REG_DWORD} are treated as 32-bit signed integers. All
 other formats are treated as raw bytes. Data from the registry is
 converted to the requested type @racket[type]:

@itemlist[

 @item{A @tt{REG_SZ} registry value is converted to an integer using
       @racket[string->number] (using @racket[0] if the result is not
       an exact integer), and it is converted to bytes using
       @racket[string->bytes/utf-8].}

 @item{A @tt{REG_DWORD} registry value is converted to a string or
       byte string via @racket[number->string] and (for byte strings)
       @racket[string->bytes/utf-8].}

 @item{Any other kind of registry value is converted to a string or
       integer using @racket[bytes->string/utf-8] and (for integers)
       @racket[string->number].}

]

To get the ``default'' value for an entry, use a trailing backslash. For
example, the following expression gets a command line for starting a
browser:

@racketblock[
  (get-resource "HKEY_CLASSES_ROOT" 
                "htmlfile\\shell\\open\\command\\")
]}

@defproc[(write-resource [section string?]
                         [entry string?]
                         [value (or/c string? bytes? exact-integer?)]
                         [file (or/c path-string? #f) #f]
                         [#:type type (or/c 'string 'bytes 'integer) 'string]
                         [#:create-key? create-key? any/c #f])
         boolean?]{

Write a value to the Windows registry. @compat[section racket]

The resource value is keyed on the combination of @racket[section] and
 @racket[entry]. If @racket[create-key?] is false, the resource entry
 must already exist, otherwise the write fails. The result is
 @racket[#f] if the write fails or @racket[#t] if it succeeds.

The @racket[type] argument determines the format of the value in the
 registry: @racket['string] writes using the @tt{REG_SZ} format,
 @racket['bytes] writes using the @tt{REG_BINARY} format, and
 @racket['dword] writes using the @tt{REG_DWORD} format. Any kind of
 @racket[value] can be converted for any kind of @racket[type] using
 the inverse of the conversions for @racket[get-resource].}

