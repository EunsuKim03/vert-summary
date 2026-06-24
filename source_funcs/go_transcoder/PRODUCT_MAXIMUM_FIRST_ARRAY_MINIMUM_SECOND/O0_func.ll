define i64 @f_gold(ptr nocapture %arr1.data, i64 %arr1.len, i64 %arr1.cap, ptr nocapture %arr2.data, i64 %arr2.len, i64 %arr2.cap, i64 %n1, i64 %n2) #0 !dbg !6092 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr1.data, 0, !dbg !6101
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr1.len, 1, !dbg !6101
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr1.cap, 2, !dbg !6101
    #dbg_value(ptr %arr1.data, !6097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6101)
    #dbg_value(i64 %arr1.len, !6097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6101)
    #dbg_value(i64 %arr1.cap, !6097, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6101)
  %3 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr2.data, 0, !dbg !6101
  %4 = insertvalue { ptr, i64, i64 } %3, i64 %arr2.len, 1, !dbg !6101
  %5 = insertvalue { ptr, i64, i64 } %4, i64 %arr2.cap, 2, !dbg !6101
    #dbg_value(ptr %arr2.data, !6098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6101)
    #dbg_value(i64 %arr2.len, !6098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6101)
    #dbg_value(i64 %arr2.cap, !6098, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6101)
    #dbg_value(i64 %n1, !6099, !DIExpression(), !6101)
    #dbg_value(i64 %n2, !6100, !DIExpression(), !6101)
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6102)
  %6 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6103
  %7 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6103
  %8 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6103
  call void @sort.Ints(ptr %6, i64 %7, i64 %8, ptr undef), !dbg !6103
    #dbg_value({ ptr, i64, i64 } %5, !6098, !DIExpression(), !6104)
  %9 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !6105
  %10 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !6105
  %11 = extractvalue { ptr, i64, i64 } %5, 2, !dbg !6105
  call void @sort.Ints(ptr %9, i64 %10, i64 %11, ptr undef), !dbg !6105
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6106)
    #dbg_value(i64 %n1, !6099, !DIExpression(), !6107)
  %12 = sub i64 %n1, 1, !dbg !6108
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6109
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6109
  %13 = icmp uge i64 %12, %indexaddr.len, !dbg !6109
  br i1 %13, label %lookup.throw, label %lookup.next, !dbg !6109

lookup.next:                                      ; preds = %entry
  %14 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %12, !dbg !6109
  %15 = load i64, ptr %14, align 8, !dbg !6109
    #dbg_value({ ptr, i64, i64 } %5, !6098, !DIExpression(), !6110)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !6111
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !6111
  %16 = icmp uge i64 0, %indexaddr.len2, !dbg !6111
  br i1 %16, label %lookup.throw3, label %lookup.next4, !dbg !6111

lookup.next4:                                     ; preds = %lookup.next
  %17 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 0, !dbg !6111
  %18 = load i64, ptr %17, align 8, !dbg !6111
  %19 = mul i64 %15, %18, !dbg !6112
  ret i64 %19, !dbg !6113

lookup.throw:                                     ; preds = %entry
  call void @runtime.lookupPanic(ptr undef), !dbg !6109
  unreachable, !dbg !6109

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !6111
  unreachable, !dbg !6111
}
