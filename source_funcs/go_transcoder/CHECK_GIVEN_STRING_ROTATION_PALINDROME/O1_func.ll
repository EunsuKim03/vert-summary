define noundef i1 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %str.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3121)
    #dbg_value(i64 %str.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3121)
    #dbg_value(i64 %str.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3121)
    #dbg_value(ptr undef, !3122, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3127)
    #dbg_value(ptr undef, !3122, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3127)
    #dbg_value(ptr undef, !3122, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !3127)
    #dbg_value(ptr undef, !3122, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !3127)
    #dbg_value(ptr undef, !3122, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3127)
    #dbg_value(ptr undef, !3122, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !3127)
    #dbg_value(ptr undef, !3122, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !3127)
    #dbg_value(ptr undef, !3122, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !3127)
    #dbg_value(i64 0, !3119, !DIExpression(), !3129)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3130)
    #dbg_value(i64 %str.len, !3120, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3131)
  br label %for.loop, !dbg !3132

for.loop:                                         ; preds = %lookup.next4, %entry
  %stackalloc4.sroa.11.0 = phi i64 [ 0, %entry ], [ %stackalloc4.sroa.11.0.extract.shift, %lookup.next4 ], !dbg !3132
  %stackalloc4.sroa.0.0 = phi i64 [ 0, %entry ], [ %1, %lookup.next4 ], !dbg !3132
  %stackalloc.sroa.11.0.in.in.in = phi i64 [ %str.len, %entry ], [ %stackalloc.sroa.11.0.in.in, %lookup.next4 ]
  %stackalloc.sroa.11.0.in.in = add i64 %stackalloc.sroa.11.0.in.in.in, -1, !dbg !3132
    #dbg_value(i64 %stackalloc.sroa.11.0.in.in, !3120, !DIExpression(), !3133)
  %0 = and i64 %stackalloc4.sroa.0.0, 72057594037927935, !dbg !3134
  %stackalloc4.sroa.0.0.insert.insert = or disjoint i64 %0, %stackalloc4.sroa.11.0, !dbg !3134
    #dbg_value(i64 %stackalloc4.sroa.0.0.insert.insert, !3119, !DIExpression(), !3135)
  %.not116.not = icmp sle i64 %stackalloc.sroa.11.0.in.in, %stackalloc4.sroa.0.0.insert.insert, !dbg !3134
  br i1 %.not116.not, label %common.ret, label %for.body, !dbg !3132

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3136)
    #dbg_value(ptr undef, !3122, !DIExpression(), !3127)
    #dbg_value(ptr undef, !3122, !DIExpression(), !3137)
    #dbg_value(i64 %stackalloc4.sroa.0.0.insert.insert, !3125, !DIExpression(), !3138)
    #dbg_value(ptr undef, !3122, !DIExpression(), !3139)
  %1 = add i64 %stackalloc4.sroa.0.0.insert.insert, 1, !dbg !3140
  %stackalloc4.sroa.11.0.extract.shift = and i64 %1, -72057594037927936, !dbg !3134
    #dbg_value(i64 %stackalloc4.sroa.0.0.insert.insert, !3125, !DIExpression(), !3141)
  %.not = icmp ult i64 %stackalloc4.sroa.0.0.insert.insert, %str.len, !dbg !3142
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3142

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3143)
  %.not2 = icmp ult i64 %stackalloc.sroa.11.0.in.in, %str.len, !dbg !3144
  br i1 %.not2, label %lookup.next4, label %lookup.throw3, !dbg !3144

lookup.next4:                                     ; preds = %lookup.next
  %2 = getelementptr inbounds i8, ptr %str.data, i64 %stackalloc4.sroa.0.0.insert.insert, !dbg !3142
  %3 = load i8, ptr %2, align 1, !dbg !3142
  %4 = getelementptr inbounds i8, ptr %str.data, i64 %stackalloc.sroa.11.0.in.in, !dbg !3144
  %5 = load i8, ptr %4, align 1, !dbg !3144
  %.not3 = icmp eq i8 %3, %5, !dbg !3145
  br i1 %.not3, label %for.loop, label %common.ret, !dbg !3132

common.ret:                                       ; preds = %for.loop, %lookup.next4
  ret i1 %.not116.not, !dbg !3132

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3142
  unreachable, !dbg !3142

lookup.throw3:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3144
  unreachable, !dbg !3144
}
