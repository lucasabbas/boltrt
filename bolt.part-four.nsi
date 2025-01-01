DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true

  ; Remove File Association
  DeleteRegKey HKCR ".bolt"
  DeleteRegKey HKCR ".bolt\shell\open\command"
  DeleteRegKey HKCR ".bolt\shell\open"
  DeleteRegKey HKCR ".bolt\shell"
  DeleteRegKey HKCR ".bolt\DefaultIcon"
  DeleteRegKey HKCR ".bolt"

SectionEnd