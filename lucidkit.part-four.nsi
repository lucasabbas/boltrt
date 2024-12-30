DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true

  ; Remove File Association
  DeleteRegKey HKCR ".lkapp"
  DeleteRegKey HKCR ".lkapp\shell\open\command"
  DeleteRegKey HKCR ".lkapp\shell\open"
  DeleteRegKey HKCR ".lkapp\shell"
  DeleteRegKey HKCR ".lkapp\DefaultIcon"
  DeleteRegKey HKCR ".lkapp"

SectionEnd