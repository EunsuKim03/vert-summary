define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4938
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4938
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4938
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4938)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4938)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4938)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4938)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4939)
  %3 = icmp eq i64 %n, 1, !dbg !4940
  br i1 %3, label %if.then, label %cond.false, !dbg !4941

if.then:                                          ; preds = %cond.false, %entry
  ret i64 1, !dbg !4942

cond.false:                                       ; preds = %entry
    #dbg_value(i64 %n, !4937, !DIExpression(), !4943)
  %4 = icmp eq i64 %n, 0, !dbg !4944
  br i1 %4, label %if.then, label %if.done, !dbg !4941

if.done:                                          ; preds = %cond.false
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4945)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4946)
  %5 = sub i64 %n, 1, !dbg !4947
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4948
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4948
  %6 = icmp uge i64 %5, %indexaddr.len, !dbg !4948
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !4948

lookup.next:                                      ; preds = %if.done
  %7 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %5, !dbg !4948
  %8 = load i64, ptr %7, align 8, !dbg !4948
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4949)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4950)
  %9 = sub i64 %n, 2, !dbg !4951
  %indexaddr.ptr3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4952
  %indexaddr.len4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4952
  %10 = icmp uge i64 %9, %indexaddr.len4, !dbg !4952
  br i1 %10, label %lookup.throw5, label %lookup.next6, !dbg !4952

lookup.next6:                                     ; preds = %lookup.next
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr3, i64 %9, !dbg !4952
  %12 = load i64, ptr %11, align 8, !dbg !4952
  %13 = icmp slt i64 %8, %12, !dbg !4953
  br i1 %13, label %if.then1, label %if.done2, !dbg !4941

if.then1:                                         ; preds = %lookup.next6
  ret i64 0, !dbg !4954

if.done2:                                         ; preds = %lookup.next6
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4955)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4956)
  %14 = sub i64 %n, 1, !dbg !4957
  %15 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4958
  %16 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4958
  %17 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4958
  %18 = call i64 @f_gold(ptr %15, i64 %16, i64 %17, i64 %14), !dbg !4958
  ret i64 %18, !dbg !4959

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4948
  unreachable, !dbg !4948

lookup.throw5:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4952
  unreachable, !dbg !4952
}
