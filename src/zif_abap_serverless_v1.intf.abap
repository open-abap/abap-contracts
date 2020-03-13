INTERFACE zif_abap_serverless_v1 PUBLIC.

  TYPES: BEGIN OF ty_header,
           field TYPE string,
           value TYPE string,
         END OF ty_header.

  TYPE ty_headers TYPE STANDARD TABLE OF ty_header WITH DEFAULT KEY.

  TYPES: BEGIN OF ty_http,
           headers TYPE ty_headers,
           body    TYPE string,
         END OF ty_http.

  METHODS
    run
      IMPORTING
        method      TYPE string
        path        TYPE string
        query       TYPE string
        request     TYPE ty_http
      RETURNING
        response    TYPE ty_http
      RAISING
        cx_static_check.

ENDINTERFACE.
