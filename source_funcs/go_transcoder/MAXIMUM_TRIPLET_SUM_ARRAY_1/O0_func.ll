define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !6092 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !6099
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !6099
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !6099
    #dbg_value(ptr %arr.data, !6097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6099)
    #dbg_value(i64 %arr.len, !6097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6099)
    #dbg_value(i64 %arr.cap, !6097, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6099)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6099)
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6100)
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6101
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6101
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6101
  call void @sort.Ints(ptr %3, i64 %4, i64 %5, ptr undef), !dbg !6101
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6102)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6103)
  %6 = sub i64 %n, 1, !dbg !6104
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6105
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6105
  %7 = icmp uge i64 %6, %indexaddr.len, !dbg !6105
  br i1 %7, label %lookup.throw, label %lookup.next, !dbg !6105

lookup.next:                                      ; preds = %entry
  %8 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %6, !dbg !6105
  %9 = load i64, ptr %8, align 8, !dbg !6105
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6106)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6107)
  %10 = sub i64 %n, 2, !dbg !6108
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6109
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6109
  %11 = icmp uge i64 %10, %indexaddr.len2, !dbg !6109
  br i1 %11, label %lookup.throw3, label %lookup.next4, !dbg !6109

lookup.next4:                                     ; preds = %lookup.next
  %12 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %10, !dbg !6109
  %13 = load i64, ptr %12, align 8, !dbg !6109
  %14 = add i64 %9, %13, !dbg !6110
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6111)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6112)
  %15 = sub i64 %n, 3, !dbg !6113
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6114
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6114
  %16 = icmp uge i64 %15, %indexaddr.len6, !dbg !6114
  br i1 %16, label %lookup.throw7, label %lookup.next8, !dbg !6114

lookup.next8:                                     ; preds = %lookup.next4
  %17 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %15, !dbg !6114
  %18 = load i64, ptr %17, align 8, !dbg !6114
  %19 = add i64 %14, %18, !dbg !6115
  ret i64 %19, !dbg !6116

lookup.throw:                                     ; preds = %entry
  call void @runtime.lookupPanic(ptr undef), !dbg !6105
  unreachable, !dbg !6105

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !6109
  unreachable, !dbg !6109

lookup.throw7:                                    ; preds = %lookup.next4
  call void @runtime.lookupPanic(ptr undef), !dbg !6114
  unreachable, !dbg !6114
}
