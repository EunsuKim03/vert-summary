define noundef i1 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %str.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3037)
    #dbg_value(i64 %str.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3037)
    #dbg_value(i64 %str.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3037)
    #dbg_value(ptr undef, !3038, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3043)
    #dbg_value(ptr undef, !3038, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3043)
    #dbg_value(ptr undef, !3038, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !3043)
    #dbg_value(ptr undef, !3038, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !3043)
    #dbg_value(ptr undef, !3038, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3043)
    #dbg_value(ptr undef, !3038, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !3043)
    #dbg_value(ptr undef, !3038, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !3043)
    #dbg_value(ptr undef, !3038, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !3043)
    #dbg_value(i64 0, !3035, !DIExpression(), !3045)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3046)
    #dbg_value(i64 %str.len, !3036, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3047)
  br label %for.loop, !dbg !3048

for.loop:                                         ; preds = %lookup.next4, %entry
  %stackalloc4.sroa.11.0 = phi i64 [ 0, %entry ], [ %stackalloc4.sroa.11.0.extract.shift, %lookup.next4 ], !dbg !3048
  %stackalloc4.sroa.0.0 = phi i64 [ 0, %entry ], [ %1, %lookup.next4 ], !dbg !3048
  %stackalloc.sroa.11.0.in.in.in = phi i64 [ %str.len, %entry ], [ %stackalloc.sroa.11.0.in.in, %lookup.next4 ]
  %stackalloc.sroa.11.0.in.in = add i64 %stackalloc.sroa.11.0.in.in.in, -1, !dbg !3048
    #dbg_value(i64 %stackalloc.sroa.11.0.in.in, !3036, !DIExpression(), !3049)
  %0 = and i64 %stackalloc4.sroa.0.0, 72057594037927935, !dbg !3050
  %stackalloc4.sroa.0.0.insert.insert = or disjoint i64 %0, %stackalloc4.sroa.11.0, !dbg !3050
    #dbg_value(i64 %stackalloc4.sroa.0.0.insert.insert, !3035, !DIExpression(), !3051)
  %.not116.not.not = icmp sle i64 %stackalloc.sroa.11.0.in.in, %stackalloc4.sroa.0.0.insert.insert, !dbg !3050
  br i1 %.not116.not.not, label %common.ret, label %for.body, !dbg !3048

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3052)
    #dbg_value(ptr undef, !3038, !DIExpression(), !3043)
    #dbg_value(ptr undef, !3038, !DIExpression(), !3053)
    #dbg_value(i64 %stackalloc4.sroa.0.0.insert.insert, !3041, !DIExpression(), !3054)
    #dbg_value(ptr undef, !3038, !DIExpression(), !3055)
  %1 = add nsw i64 %stackalloc4.sroa.0.0.insert.insert, 1, !dbg !3056
  %stackalloc4.sroa.11.0.extract.shift = and i64 %1, -72057594037927936, !dbg !3050
    #dbg_value(i64 %stackalloc4.sroa.0.0.insert.insert, !3041, !DIExpression(), !3057)
  %.not = icmp ult i64 %stackalloc4.sroa.0.0.insert.insert, %str.len, !dbg !3058
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3058

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3059)
  %.not2 = icmp ult i64 %stackalloc.sroa.11.0.in.in, %str.len, !dbg !3060
  br i1 %.not2, label %lookup.next4, label %lookup.throw3, !dbg !3060

lookup.next4:                                     ; preds = %lookup.next
  %2 = getelementptr inbounds i8, ptr %str.data, i64 %stackalloc4.sroa.0.0.insert.insert, !dbg !3058
  %3 = load i8, ptr %2, align 1, !dbg !3058
  %4 = getelementptr inbounds i8, ptr %str.data, i64 %stackalloc.sroa.11.0.in.in, !dbg !3060
  %5 = load i8, ptr %4, align 1, !dbg !3060
  %.not3 = icmp eq i8 %3, %5, !dbg !3061
  br i1 %.not3, label %for.loop, label %common.ret, !dbg !3048

common.ret:                                       ; preds = %for.loop, %lookup.next4
  ret i1 %.not116.not.not, !dbg !3048

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3058
  unreachable, !dbg !3058

lookup.throw3:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3060
  unreachable, !dbg !3060
}
