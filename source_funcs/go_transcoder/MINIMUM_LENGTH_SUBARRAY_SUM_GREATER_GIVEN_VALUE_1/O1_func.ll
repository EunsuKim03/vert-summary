define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3125)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3125)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3125)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3125)
    #dbg_value(i64 %x, !3120, !DIExpression(), !3125)
    #dbg_value(i64 0, !3121, !DIExpression(), !3126)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3127)
    #dbg_value(ptr undef, !3128, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3132)
    #dbg_value(ptr undef, !3128, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3132)
    #dbg_value(ptr undef, !3128, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !3132)
    #dbg_value(ptr undef, !3128, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !3132)
    #dbg_value(ptr undef, !3128, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3132)
    #dbg_value(ptr undef, !3128, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !3132)
    #dbg_value(ptr undef, !3128, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !3132)
    #dbg_value(ptr undef, !3128, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !3132)
    #dbg_value(ptr undef, !3134, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3138)
    #dbg_value(ptr undef, !3134, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3138)
    #dbg_value(ptr undef, !3134, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !3138)
    #dbg_value(ptr undef, !3134, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !3138)
    #dbg_value(ptr undef, !3134, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3138)
    #dbg_value(ptr undef, !3134, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !3138)
    #dbg_value(ptr undef, !3134, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !3138)
    #dbg_value(ptr undef, !3134, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !3138)
  %0 = add i64 %n, 1, !dbg !3140
    #dbg_value(i64 %0, !3122, !DIExpression(), !3141)
    #dbg_value(i64 0, !3123, !DIExpression(), !3142)
    #dbg_value(i64 0, !3124, !DIExpression(), !3143)
  %1 = icmp sgt i64 %x, 0
  br label %for.loop, !dbg !3144

for.loop:                                         ; preds = %for.loop3, %entry
  %stackalloc8.sroa.12.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.12.3, %for.loop3 ], !dbg !3142
  %stackalloc8.sroa.11.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.11.3, %for.loop3 ], !dbg !3142
  %stackalloc8.sroa.10.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.10.3, %for.loop3 ], !dbg !3142
  %stackalloc8.sroa.9.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.9.3, %for.loop3 ], !dbg !3142
  %stackalloc8.sroa.8.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.8.3, %for.loop3 ], !dbg !3142
  %stackalloc8.sroa.7.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.7.3, %for.loop3 ], !dbg !3142
  %stackalloc8.sroa.6.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.6.3, %for.loop3 ], !dbg !3142
  %stackalloc8.sroa.0.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.0.3, %for.loop3 ], !dbg !3142
  %stackalloc.sroa.13.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.13.1, %for.loop3 ], !dbg !3143
  %stackalloc.sroa.12.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.12.1, %for.loop3 ], !dbg !3143
  %stackalloc.sroa.11.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.11.1, %for.loop3 ], !dbg !3143
  %stackalloc.sroa.10.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.10.1, %for.loop3 ], !dbg !3143
  %stackalloc.sroa.9.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.9.1, %for.loop3 ], !dbg !3143
  %stackalloc.sroa.8.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.8.1, %for.loop3 ], !dbg !3143
  %stackalloc.sroa.7.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.7.1, %for.loop3 ], !dbg !3143
  %stackalloc.sroa.0.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.0.1, %for.loop3 ], !dbg !3143
  %2 = phi i64 [ 0, %entry ], [ %17, %for.loop3 ], !dbg !3126
  %3 = phi i64 [ %0, %entry ], [ %18, %for.loop3 ], !dbg !3141
  %stackalloc.sroa.13.0.insert.ext140 = zext i8 %stackalloc.sroa.13.0 to i64, !dbg !3145
  %stackalloc.sroa.13.0.insert.shift141 = shl nuw i64 %stackalloc.sroa.13.0.insert.ext140, 56, !dbg !3145
  %stackalloc.sroa.12.0.insert.ext125 = zext i8 %stackalloc.sroa.12.0 to i64, !dbg !3145
  %stackalloc.sroa.12.0.insert.shift126 = shl nuw nsw i64 %stackalloc.sroa.12.0.insert.ext125, 48, !dbg !3145
  %stackalloc.sroa.12.0.insert.insert128 = or disjoint i64 %stackalloc.sroa.12.0.insert.shift126, %stackalloc.sroa.13.0.insert.shift141, !dbg !3145
  %stackalloc.sroa.11.0.insert.ext110 = zext i8 %stackalloc.sroa.11.0 to i64, !dbg !3145
  %stackalloc.sroa.11.0.insert.shift111 = shl nuw nsw i64 %stackalloc.sroa.11.0.insert.ext110, 40, !dbg !3145
  %stackalloc.sroa.11.0.insert.insert113 = or disjoint i64 %stackalloc.sroa.12.0.insert.insert128, %stackalloc.sroa.11.0.insert.shift111, !dbg !3145
  %stackalloc.sroa.10.0.insert.ext95 = zext i8 %stackalloc.sroa.10.0 to i64, !dbg !3145
  %stackalloc.sroa.10.0.insert.shift96 = shl nuw nsw i64 %stackalloc.sroa.10.0.insert.ext95, 32, !dbg !3145
  %stackalloc.sroa.10.0.insert.insert98 = or disjoint i64 %stackalloc.sroa.11.0.insert.insert113, %stackalloc.sroa.10.0.insert.shift96, !dbg !3145
  %stackalloc.sroa.9.0.insert.ext80 = zext i8 %stackalloc.sroa.9.0 to i64, !dbg !3145
  %stackalloc.sroa.9.0.insert.shift81 = shl nuw nsw i64 %stackalloc.sroa.9.0.insert.ext80, 24, !dbg !3145
  %stackalloc.sroa.9.0.insert.insert83 = or disjoint i64 %stackalloc.sroa.10.0.insert.insert98, %stackalloc.sroa.9.0.insert.shift81, !dbg !3145
  %stackalloc.sroa.8.0.insert.ext65 = zext i8 %stackalloc.sroa.8.0 to i64, !dbg !3145
  %stackalloc.sroa.8.0.insert.shift66 = shl nuw nsw i64 %stackalloc.sroa.8.0.insert.ext65, 16, !dbg !3145
  %stackalloc.sroa.7.0.insert.ext50 = zext i8 %stackalloc.sroa.7.0 to i64, !dbg !3145
  %stackalloc.sroa.7.0.insert.shift51 = shl nuw nsw i64 %stackalloc.sroa.7.0.insert.ext50, 8, !dbg !3145
  %stackalloc.sroa.7.0.insert.mask52 = or disjoint i64 %stackalloc.sroa.9.0.insert.insert83, %stackalloc.sroa.8.0.insert.shift66, !dbg !3145
  %stackalloc.sroa.0.0.insert.ext38 = zext i8 %stackalloc.sroa.0.0 to i64, !dbg !3145
  %stackalloc.sroa.0.0.insert.mask39 = or disjoint i64 %stackalloc.sroa.7.0.insert.mask52, %stackalloc.sroa.7.0.insert.shift51, !dbg !3145
  %stackalloc.sroa.0.0.insert.insert40 = or i64 %stackalloc.sroa.0.0.insert.mask39, %stackalloc.sroa.0.0.insert.ext38, !dbg !3145
    #dbg_value(i64 %stackalloc.sroa.0.0.insert.insert40, !3124, !DIExpression(), !3146)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3147)
  %4 = icmp slt i64 %stackalloc.sroa.0.0.insert.insert40, %n, !dbg !3145
  br i1 %4, label %for.loop1, label %for.done, !dbg !3144

for.loop1:                                        ; preds = %for.loop, %lookup.next
  %stackalloc8.sroa.12.1 = phi i8 [ %stackalloc8.sroa.12.2, %lookup.next ], [ %stackalloc8.sroa.12.0, %for.loop ], !dbg !3144
  %stackalloc8.sroa.11.1 = phi i8 [ %stackalloc8.sroa.11.2, %lookup.next ], [ %stackalloc8.sroa.11.0, %for.loop ], !dbg !3144
  %stackalloc8.sroa.10.1 = phi i8 [ %stackalloc8.sroa.10.2, %lookup.next ], [ %stackalloc8.sroa.10.0, %for.loop ], !dbg !3144
  %stackalloc8.sroa.9.1 = phi i8 [ %stackalloc8.sroa.9.2, %lookup.next ], [ %stackalloc8.sroa.9.0, %for.loop ], !dbg !3144
  %stackalloc8.sroa.8.1 = phi i8 [ %stackalloc8.sroa.8.2, %lookup.next ], [ %stackalloc8.sroa.8.0, %for.loop ], !dbg !3144
  %stackalloc8.sroa.7.1 = phi i8 [ %stackalloc8.sroa.7.2, %lookup.next ], [ %stackalloc8.sroa.7.0, %for.loop ], !dbg !3144
  %stackalloc8.sroa.6.1 = phi i8 [ %stackalloc8.sroa.6.2, %lookup.next ], [ %stackalloc8.sroa.6.0, %for.loop ], !dbg !3144
  %stackalloc8.sroa.0.1 = phi i8 [ %stackalloc8.sroa.0.2, %lookup.next ], [ %stackalloc8.sroa.0.0, %for.loop ], !dbg !3144
  %stackalloc.sroa.13.1 = phi i8 [ %stackalloc.sroa.13.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.13.0, %for.loop ], !dbg !3144
  %stackalloc.sroa.12.1 = phi i8 [ %stackalloc.sroa.12.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.12.0, %for.loop ], !dbg !3144
  %stackalloc.sroa.11.1 = phi i8 [ %stackalloc.sroa.11.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.11.0, %for.loop ], !dbg !3144
  %stackalloc.sroa.10.1 = phi i8 [ %stackalloc.sroa.10.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.10.0, %for.loop ], !dbg !3144
  %stackalloc.sroa.9.1 = phi i8 [ %stackalloc.sroa.9.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.9.0, %for.loop ], !dbg !3144
  %stackalloc.sroa.8.1 = phi i8 [ %stackalloc.sroa.8.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.8.0, %for.loop ], !dbg !3144
  %stackalloc.sroa.7.1 = phi i8 [ %stackalloc.sroa.7.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.7.0, %for.loop ], !dbg !3144
  %stackalloc.sroa.0.1 = phi i8 [ %stackalloc.sroa.0.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.0.0, %for.loop ], !dbg !3144
  %5 = phi i64 [ %16, %lookup.next ], [ %2, %for.loop ], !dbg !3126
    #dbg_value(i64 %5, !3121, !DIExpression(), !3148)
    #dbg_value(i64 %x, !3120, !DIExpression(), !3149)
  %.not = icmp sle i64 %5, %x, !dbg !3150
  %stackalloc.sroa.13.0.insert.ext145 = zext i8 %stackalloc.sroa.13.1 to i64
  %stackalloc.sroa.13.0.insert.shift146 = shl nuw i64 %stackalloc.sroa.13.0.insert.ext145, 56
  %stackalloc.sroa.12.0.insert.ext130 = zext i8 %stackalloc.sroa.12.1 to i64
  %stackalloc.sroa.12.0.insert.shift131 = shl nuw nsw i64 %stackalloc.sroa.12.0.insert.ext130, 48
  %stackalloc.sroa.11.0.insert.ext115 = zext i8 %stackalloc.sroa.11.1 to i64
  %stackalloc.sroa.11.0.insert.shift116 = shl nuw nsw i64 %stackalloc.sroa.11.0.insert.ext115, 40
  %6 = or disjoint i64 %stackalloc.sroa.11.0.insert.shift116, %stackalloc.sroa.13.0.insert.shift146
  %stackalloc.sroa.11.0.insert.insert118 = or disjoint i64 %6, %stackalloc.sroa.12.0.insert.shift131
  %stackalloc.sroa.10.0.insert.ext100 = zext i8 %stackalloc.sroa.10.1 to i64
  %stackalloc.sroa.10.0.insert.shift101 = shl nuw nsw i64 %stackalloc.sroa.10.0.insert.ext100, 32
  %stackalloc.sroa.9.0.insert.ext85 = zext i8 %stackalloc.sroa.9.1 to i64
  %stackalloc.sroa.9.0.insert.shift86 = shl nuw nsw i64 %stackalloc.sroa.9.0.insert.ext85, 24
  %7 = or disjoint i64 %stackalloc.sroa.9.0.insert.shift86, %stackalloc.sroa.10.0.insert.shift101
  %stackalloc.sroa.8.0.insert.ext70 = zext i8 %stackalloc.sroa.8.1 to i64
  %stackalloc.sroa.8.0.insert.shift71 = shl nuw nsw i64 %stackalloc.sroa.8.0.insert.ext70, 16
  %stackalloc.sroa.7.0.insert.ext55 = zext i8 %stackalloc.sroa.7.1 to i64
  %stackalloc.sroa.7.0.insert.shift56 = shl nuw nsw i64 %stackalloc.sroa.7.0.insert.ext55, 8
  %8 = or disjoint i64 %stackalloc.sroa.11.0.insert.insert118, %stackalloc.sroa.8.0.insert.shift71
  %stackalloc.sroa.0.0.insert.ext42 = zext i8 %stackalloc.sroa.0.1 to i64
  %9 = or disjoint i64 %7, %stackalloc.sroa.7.0.insert.shift56
  %stackalloc.sroa.0.0.insert.mask43 = or disjoint i64 %9, %8
  %stackalloc.sroa.0.0.insert.insert44 = or disjoint i64 %stackalloc.sroa.0.0.insert.mask43, %stackalloc.sroa.0.0.insert.ext42
    #dbg_value(!DIArgList(i64 %stackalloc.sroa.13.0.insert.shift146, i64 %stackalloc.sroa.0.0.insert.ext42, i64 %stackalloc.sroa.7.0.insert.shift56, i64 %stackalloc.sroa.8.0.insert.shift71, i64 %stackalloc.sroa.9.0.insert.shift86, i64 %stackalloc.sroa.10.0.insert.shift101, i64 %stackalloc.sroa.11.0.insert.shift116, i64 %stackalloc.sroa.12.0.insert.shift131), !3124, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3151)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3152)
  %10 = icmp slt i64 %stackalloc.sroa.0.0.insert.insert44, %n
  %or.cond = select i1 %.not, i1 %10, i1 false, !dbg !3144
  br i1 %or.cond, label %for.body, label %for.loop3, !dbg !3144

for.body:                                         ; preds = %for.loop1
    #dbg_value(i64 %5, !3121, !DIExpression(), !3153)
  %11 = icmp slt i64 %5, 1, !dbg !3154
    #dbg_value(i64 %x, !3120, !DIExpression(), !3155)
  %or.cond29 = select i1 %11, i1 %1, i1 false, !dbg !3144
  br i1 %or.cond29, label %if.then, label %if.done, !dbg !3144

if.then:                                          ; preds = %for.body
    #dbg_value(!DIArgList(i64 %stackalloc.sroa.13.0.insert.shift146, i64 %stackalloc.sroa.0.0.insert.ext42, i64 %stackalloc.sroa.7.0.insert.shift56, i64 %stackalloc.sroa.8.0.insert.shift71, i64 %stackalloc.sroa.9.0.insert.shift86, i64 %stackalloc.sroa.10.0.insert.shift101, i64 %stackalloc.sroa.11.0.insert.shift116, i64 %stackalloc.sroa.12.0.insert.shift131), !3124, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3156)
  %stackalloc8.sroa.0.0.extract.trunc = trunc i64 %stackalloc.sroa.0.0.insert.insert44 to i8, !dbg !3157
  %stackalloc8.sroa.6.0.extract.shift = lshr exact i64 %stackalloc.sroa.0.0.insert.mask43, 8, !dbg !3157
  %stackalloc8.sroa.6.0.extract.trunc = trunc i64 %stackalloc8.sroa.6.0.extract.shift to i8, !dbg !3157
    #dbg_value(!DIArgList(i64 %stackalloc.sroa.13.0.insert.shift146, i64 %stackalloc.sroa.0.0.insert.ext42, i64 %stackalloc.sroa.7.0.insert.shift56, i64 %stackalloc.sroa.8.0.insert.shift71, i64 %stackalloc.sroa.9.0.insert.shift86, i64 %stackalloc.sroa.10.0.insert.shift101, i64 %stackalloc.sroa.11.0.insert.shift116, i64 %stackalloc.sroa.12.0.insert.shift131), !3123, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3157)
    #dbg_value(i64 0, !3121, !DIExpression(), !3158)
  br label %if.done, !dbg !3144

if.done:                                          ; preds = %if.then, %for.body
  %stackalloc8.sroa.12.2 = phi i8 [ %stackalloc.sroa.13.1, %if.then ], [ %stackalloc8.sroa.12.1, %for.body ], !dbg !3144
  %stackalloc8.sroa.11.2 = phi i8 [ %stackalloc.sroa.12.1, %if.then ], [ %stackalloc8.sroa.11.1, %for.body ], !dbg !3144
  %stackalloc8.sroa.10.2 = phi i8 [ %stackalloc.sroa.11.1, %if.then ], [ %stackalloc8.sroa.10.1, %for.body ], !dbg !3144
  %stackalloc8.sroa.9.2 = phi i8 [ %stackalloc.sroa.10.1, %if.then ], [ %stackalloc8.sroa.9.1, %for.body ], !dbg !3144
  %stackalloc8.sroa.8.2 = phi i8 [ %stackalloc.sroa.9.1, %if.then ], [ %stackalloc8.sroa.8.1, %for.body ], !dbg !3144
  %stackalloc8.sroa.7.2 = phi i8 [ %stackalloc.sroa.8.1, %if.then ], [ %stackalloc8.sroa.7.1, %for.body ], !dbg !3144
  %stackalloc8.sroa.6.2 = phi i8 [ %stackalloc8.sroa.6.0.extract.trunc, %if.then ], [ %stackalloc8.sroa.6.1, %for.body ], !dbg !3144
  %stackalloc8.sroa.0.2 = phi i8 [ %stackalloc8.sroa.0.0.extract.trunc, %if.then ], [ %stackalloc8.sroa.0.1, %for.body ], !dbg !3144
  %12 = phi i64 [ 0, %if.then ], [ %5, %for.body ], !dbg !3126
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3159)
    #dbg_value(ptr undef, !3134, !DIExpression(), !3138)
    #dbg_value(ptr undef, !3134, !DIExpression(), !3160)
    #dbg_value(!DIArgList(i64 %stackalloc.sroa.13.0.insert.shift146, i64 %stackalloc.sroa.0.0.insert.ext42, i64 %stackalloc.sroa.7.0.insert.shift56, i64 %stackalloc.sroa.8.0.insert.shift71, i64 %stackalloc.sroa.9.0.insert.shift86, i64 %stackalloc.sroa.10.0.insert.shift101, i64 %stackalloc.sroa.11.0.insert.shift116, i64 %stackalloc.sroa.12.0.insert.shift131), !3137, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3161)
    #dbg_value(ptr undef, !3134, !DIExpression(), !3162)
    #dbg_value(!DIArgList(i64 %stackalloc.sroa.13.0.insert.shift146, i64 %stackalloc.sroa.0.0.insert.ext42, i64 %stackalloc.sroa.7.0.insert.shift56, i64 %stackalloc.sroa.8.0.insert.shift71, i64 %stackalloc.sroa.9.0.insert.shift86, i64 %stackalloc.sroa.10.0.insert.shift101, i64 %stackalloc.sroa.11.0.insert.shift116, i64 %stackalloc.sroa.12.0.insert.shift131), !3137, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3163)
  %.not7 = icmp ult i64 %stackalloc.sroa.0.0.insert.insert44, %arr.len, !dbg !3164
  br i1 %.not7, label %lookup.next, label %lookup.throw, !dbg !3164

lookup.next:                                      ; preds = %if.done
  %13 = add i64 %stackalloc.sroa.0.0.insert.insert44, 1, !dbg !3165
  %stackalloc.sroa.13.0.extract.shift = lshr i64 %13, 56, !dbg !3165
  %stackalloc.sroa.13.0.extract.trunc = trunc nuw i64 %stackalloc.sroa.13.0.extract.shift to i8, !dbg !3165
  %stackalloc.sroa.12.0.extract.shift = lshr i64 %13, 48, !dbg !3165
  %stackalloc.sroa.12.0.extract.trunc = trunc i64 %stackalloc.sroa.12.0.extract.shift to i8, !dbg !3165
  %stackalloc.sroa.11.0.extract.shift = lshr i64 %13, 40, !dbg !3165
  %stackalloc.sroa.11.0.extract.trunc = trunc i64 %stackalloc.sroa.11.0.extract.shift to i8, !dbg !3165
  %stackalloc.sroa.10.0.extract.shift = lshr i64 %13, 32, !dbg !3165
  %stackalloc.sroa.10.0.extract.trunc = trunc i64 %stackalloc.sroa.10.0.extract.shift to i8, !dbg !3165
  %stackalloc.sroa.9.0.extract.shift = lshr i64 %13, 24, !dbg !3165
  %stackalloc.sroa.9.0.extract.trunc = trunc i64 %stackalloc.sroa.9.0.extract.shift to i8, !dbg !3165
  %stackalloc.sroa.8.0.extract.shift = lshr i64 %13, 16, !dbg !3165
  %stackalloc.sroa.8.0.extract.trunc = trunc i64 %stackalloc.sroa.8.0.extract.shift to i8, !dbg !3165
  %stackalloc.sroa.7.0.extract.shift = lshr i64 %13, 8, !dbg !3165
  %stackalloc.sroa.7.0.extract.trunc = trunc i64 %stackalloc.sroa.7.0.extract.shift to i8, !dbg !3165
  %stackalloc.sroa.0.0.extract.trunc = trunc i64 %13 to i8, !dbg !3165
  %14 = getelementptr inbounds i64, ptr %arr.data, i64 %stackalloc.sroa.0.0.insert.insert44, !dbg !3164
  %15 = load i64, ptr %14, align 8, !dbg !3164
  %16 = add i64 %15, %12, !dbg !3166
    #dbg_value(i64 %16, !3121, !DIExpression(), !3166)
  br label %for.loop1, !dbg !3144

for.loop3:                                        ; preds = %for.loop1, %lookup.next11
  %stackalloc8.sroa.12.3 = phi i8 [ %stackalloc8.sroa.12.0.extract.trunc207, %lookup.next11 ], [ %stackalloc8.sroa.12.1, %for.loop1 ], !dbg !3144
  %stackalloc8.sroa.11.3 = phi i8 [ %stackalloc8.sroa.11.0.extract.trunc200, %lookup.next11 ], [ %stackalloc8.sroa.11.1, %for.loop1 ], !dbg !3144
  %stackalloc8.sroa.10.3 = phi i8 [ %stackalloc8.sroa.10.0.extract.trunc193, %lookup.next11 ], [ %stackalloc8.sroa.10.1, %for.loop1 ], !dbg !3144
  %stackalloc8.sroa.9.3 = phi i8 [ %stackalloc8.sroa.9.0.extract.trunc186, %lookup.next11 ], [ %stackalloc8.sroa.9.1, %for.loop1 ], !dbg !3144
  %stackalloc8.sroa.8.3 = phi i8 [ %stackalloc8.sroa.8.0.extract.trunc179, %lookup.next11 ], [ %stackalloc8.sroa.8.1, %for.loop1 ], !dbg !3144
  %stackalloc8.sroa.7.3 = phi i8 [ %stackalloc8.sroa.7.0.extract.trunc172, %lookup.next11 ], [ %stackalloc8.sroa.7.1, %for.loop1 ], !dbg !3144
  %stackalloc8.sroa.6.3 = phi i8 [ %stackalloc8.sroa.6.0.extract.trunc165, %lookup.next11 ], [ %stackalloc8.sroa.6.1, %for.loop1 ], !dbg !3144
  %stackalloc8.sroa.0.3 = phi i8 [ %stackalloc8.sroa.0.0.extract.trunc158, %lookup.next11 ], [ %stackalloc8.sroa.0.1, %for.loop1 ], !dbg !3144
  %17 = phi i64 [ %26, %lookup.next11 ], [ %5, %for.loop1 ], !dbg !3126
  %18 = phi i64 [ %23, %lookup.next11 ], [ %3, %for.loop1 ], !dbg !3141
    #dbg_value(i64 %17, !3121, !DIExpression(), !3167)
    #dbg_value(i64 %x, !3120, !DIExpression(), !3168)
  %19 = icmp sgt i64 %17, %x, !dbg !3169
  %stackalloc8.sroa.12.0.insert.ext = zext i8 %stackalloc8.sroa.12.3 to i64
  %stackalloc8.sroa.12.0.insert.shift = shl nuw i64 %stackalloc8.sroa.12.0.insert.ext, 56
  %stackalloc8.sroa.11.0.insert.ext = zext i8 %stackalloc8.sroa.11.3 to i64
  %stackalloc8.sroa.11.0.insert.shift = shl nuw nsw i64 %stackalloc8.sroa.11.0.insert.ext, 48
  %stackalloc8.sroa.11.0.insert.insert = or disjoint i64 %stackalloc8.sroa.11.0.insert.shift, %stackalloc8.sroa.12.0.insert.shift
  %stackalloc8.sroa.10.0.insert.ext = zext i8 %stackalloc8.sroa.10.3 to i64
  %stackalloc8.sroa.10.0.insert.shift = shl nuw nsw i64 %stackalloc8.sroa.10.0.insert.ext, 40
  %stackalloc8.sroa.10.0.insert.insert = or disjoint i64 %stackalloc8.sroa.11.0.insert.insert, %stackalloc8.sroa.10.0.insert.shift
  %stackalloc8.sroa.9.0.insert.ext = zext i8 %stackalloc8.sroa.9.3 to i64
  %stackalloc8.sroa.9.0.insert.shift = shl nuw nsw i64 %stackalloc8.sroa.9.0.insert.ext, 32
  %stackalloc8.sroa.9.0.insert.insert = or disjoint i64 %stackalloc8.sroa.10.0.insert.insert, %stackalloc8.sroa.9.0.insert.shift
  %stackalloc8.sroa.8.0.insert.ext = zext i8 %stackalloc8.sroa.8.3 to i64
  %stackalloc8.sroa.8.0.insert.shift = shl nuw nsw i64 %stackalloc8.sroa.8.0.insert.ext, 24
  %stackalloc8.sroa.8.0.insert.insert = or disjoint i64 %stackalloc8.sroa.9.0.insert.insert, %stackalloc8.sroa.8.0.insert.shift
  %stackalloc8.sroa.7.0.insert.ext = zext i8 %stackalloc8.sroa.7.3 to i64
  %stackalloc8.sroa.7.0.insert.shift = shl nuw nsw i64 %stackalloc8.sroa.7.0.insert.ext, 16
  %stackalloc8.sroa.6.0.insert.ext = zext i8 %stackalloc8.sroa.6.3 to i64
  %stackalloc8.sroa.6.0.insert.shift = shl nuw nsw i64 %stackalloc8.sroa.6.0.insert.ext, 8
  %stackalloc8.sroa.6.0.insert.mask = or disjoint i64 %stackalloc8.sroa.8.0.insert.insert, %stackalloc8.sroa.7.0.insert.shift
  %stackalloc8.sroa.0.0.insert.ext = zext i8 %stackalloc8.sroa.0.3 to i64
  %stackalloc8.sroa.0.0.insert.mask = or disjoint i64 %stackalloc8.sroa.6.0.insert.mask, %stackalloc8.sroa.6.0.insert.shift
  %stackalloc8.sroa.0.0.insert.insert = or i64 %stackalloc8.sroa.0.0.insert.mask, %stackalloc8.sroa.0.0.insert.ext
    #dbg_value(i64 %stackalloc8.sroa.0.0.insert.insert, !3123, !DIExpression(), !3170)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3171)
  %20 = icmp slt i64 %stackalloc8.sroa.0.0.insert.insert, %n
  %or.cond31 = select i1 %19, i1 %20, i1 false, !dbg !3144
  br i1 %or.cond31, label %for.body5, label %for.loop, !dbg !3144

for.body5:                                        ; preds = %for.loop3
    #dbg_value(!DIArgList(i64 %stackalloc.sroa.13.0.insert.shift146, i64 %stackalloc.sroa.0.0.insert.ext42, i64 %stackalloc.sroa.7.0.insert.shift56, i64 %stackalloc.sroa.8.0.insert.shift71, i64 %stackalloc.sroa.9.0.insert.shift86, i64 %stackalloc.sroa.10.0.insert.shift101, i64 %stackalloc.sroa.11.0.insert.shift116, i64 %stackalloc.sroa.12.0.insert.shift131), !3124, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3172)
    #dbg_value(i64 %stackalloc8.sroa.0.0.insert.insert, !3123, !DIExpression(), !3173)
    #dbg_value(i64 %18, !3122, !DIExpression(), !3174)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3175)
    #dbg_value(ptr undef, !3128, !DIExpression(), !3132)
    #dbg_value(ptr undef, !3128, !DIExpression(), !3176)
    #dbg_value(i64 %stackalloc8.sroa.0.0.insert.insert, !3131, !DIExpression(), !3177)
    #dbg_value(ptr undef, !3128, !DIExpression(), !3178)
    #dbg_value(i64 %stackalloc8.sroa.0.0.insert.insert, !3131, !DIExpression(), !3179)
  %.not6 = icmp ult i64 %stackalloc8.sroa.0.0.insert.insert, %arr.len, !dbg !3180
  br i1 %.not6, label %lookup.next11, label %lookup.throw10, !dbg !3180

lookup.next11:                                    ; preds = %for.body5
  %21 = add i64 %stackalloc8.sroa.0.0.insert.insert, 1, !dbg !3181
  %stackalloc8.sroa.12.0.extract.shift206 = lshr i64 %21, 56, !dbg !3181
  %stackalloc8.sroa.12.0.extract.trunc207 = trunc nuw i64 %stackalloc8.sroa.12.0.extract.shift206 to i8, !dbg !3181
  %stackalloc8.sroa.11.0.extract.shift199 = lshr i64 %21, 48, !dbg !3181
  %stackalloc8.sroa.11.0.extract.trunc200 = trunc i64 %stackalloc8.sroa.11.0.extract.shift199 to i8, !dbg !3181
  %stackalloc8.sroa.10.0.extract.shift192 = lshr i64 %21, 40, !dbg !3181
  %stackalloc8.sroa.10.0.extract.trunc193 = trunc i64 %stackalloc8.sroa.10.0.extract.shift192 to i8, !dbg !3181
  %stackalloc8.sroa.9.0.extract.shift185 = lshr i64 %21, 32, !dbg !3181
  %stackalloc8.sroa.9.0.extract.trunc186 = trunc i64 %stackalloc8.sroa.9.0.extract.shift185 to i8, !dbg !3181
  %stackalloc8.sroa.8.0.extract.shift178 = lshr i64 %21, 24, !dbg !3181
  %stackalloc8.sroa.8.0.extract.trunc179 = trunc i64 %stackalloc8.sroa.8.0.extract.shift178 to i8, !dbg !3181
  %stackalloc8.sroa.7.0.extract.shift171 = lshr i64 %21, 16, !dbg !3181
  %stackalloc8.sroa.7.0.extract.trunc172 = trunc i64 %stackalloc8.sroa.7.0.extract.shift171 to i8, !dbg !3181
  %stackalloc8.sroa.6.0.extract.shift164 = lshr i64 %21, 8, !dbg !3181
  %stackalloc8.sroa.6.0.extract.trunc165 = trunc i64 %stackalloc8.sroa.6.0.extract.shift164 to i8, !dbg !3181
  %stackalloc8.sroa.0.0.extract.trunc158 = trunc i64 %21 to i8, !dbg !3181
  %22 = sub i64 %stackalloc.sroa.0.0.insert.insert44, %stackalloc8.sroa.0.0.insert.insert, !dbg !3182
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18), !dbg !3144
  %24 = getelementptr inbounds i64, ptr %arr.data, i64 %stackalloc8.sroa.0.0.insert.insert, !dbg !3180
  %25 = load i64, ptr %24, align 8, !dbg !3180
  %26 = sub i64 %17, %25, !dbg !3183
    #dbg_value(i64 %26, !3121, !DIExpression(), !3183)
  br label %for.loop3, !dbg !3144

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !3122, !DIExpression(), !3184)
  ret i64 %3, !dbg !3185

lookup.throw:                                     ; preds = %if.done
  call fastcc void @runtime.lookupPanic(), !dbg !3164
  unreachable, !dbg !3164

lookup.throw10:                                   ; preds = %for.body5
  call fastcc void @runtime.lookupPanic(), !dbg !3180
  unreachable, !dbg !3180
}
