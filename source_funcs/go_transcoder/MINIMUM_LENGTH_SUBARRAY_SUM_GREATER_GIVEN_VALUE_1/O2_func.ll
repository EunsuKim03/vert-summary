define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3041)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3041)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3041)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3041)
    #dbg_value(i64 %x, !3036, !DIExpression(), !3041)
    #dbg_value(i64 0, !3037, !DIExpression(), !3042)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3043)
    #dbg_value(ptr undef, !3044, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3048)
    #dbg_value(ptr undef, !3044, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3048)
    #dbg_value(ptr undef, !3044, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !3048)
    #dbg_value(ptr undef, !3044, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !3048)
    #dbg_value(ptr undef, !3044, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3048)
    #dbg_value(ptr undef, !3044, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !3048)
    #dbg_value(ptr undef, !3044, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !3048)
    #dbg_value(ptr undef, !3044, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !3048)
    #dbg_value(ptr undef, !3050, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3054)
    #dbg_value(ptr undef, !3050, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3054)
    #dbg_value(ptr undef, !3050, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !3054)
    #dbg_value(ptr undef, !3050, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !3054)
    #dbg_value(ptr undef, !3050, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3054)
    #dbg_value(ptr undef, !3050, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !3054)
    #dbg_value(ptr undef, !3050, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !3054)
    #dbg_value(ptr undef, !3050, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !3054)
  %0 = add i64 %n, 1, !dbg !3056
    #dbg_value(i64 %0, !3038, !DIExpression(), !3057)
    #dbg_value(i64 0, !3039, !DIExpression(), !3058)
    #dbg_value(i64 0, !3040, !DIExpression(), !3059)
  %1 = icmp sgt i64 %x, 0
  br label %for.loop, !dbg !3060

for.loop:                                         ; preds = %for.loop3, %entry
  %stackalloc8.sroa.12.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.12.3, %for.loop3 ], !dbg !3058
  %stackalloc8.sroa.11.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.11.3, %for.loop3 ], !dbg !3058
  %stackalloc8.sroa.10.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.10.3, %for.loop3 ], !dbg !3058
  %stackalloc8.sroa.9.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.9.3, %for.loop3 ], !dbg !3058
  %stackalloc8.sroa.8.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.8.3, %for.loop3 ], !dbg !3058
  %stackalloc8.sroa.7.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.7.3, %for.loop3 ], !dbg !3058
  %stackalloc8.sroa.6.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.6.3, %for.loop3 ], !dbg !3058
  %stackalloc8.sroa.0.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.0.3, %for.loop3 ], !dbg !3058
  %stackalloc.sroa.13.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.13.1, %for.loop3 ], !dbg !3059
  %stackalloc.sroa.12.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.12.1, %for.loop3 ], !dbg !3059
  %stackalloc.sroa.11.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.11.1, %for.loop3 ], !dbg !3059
  %stackalloc.sroa.10.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.10.1, %for.loop3 ], !dbg !3059
  %stackalloc.sroa.9.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.9.1, %for.loop3 ], !dbg !3059
  %stackalloc.sroa.8.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.8.1, %for.loop3 ], !dbg !3059
  %stackalloc.sroa.7.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.7.1, %for.loop3 ], !dbg !3059
  %stackalloc.sroa.0.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.0.1, %for.loop3 ], !dbg !3059
  %2 = phi i64 [ 0, %entry ], [ %17, %for.loop3 ], !dbg !3042
  %3 = phi i64 [ %0, %entry ], [ %18, %for.loop3 ], !dbg !3057
  %stackalloc.sroa.13.0.insert.ext140 = zext i8 %stackalloc.sroa.13.0 to i64, !dbg !3061
  %stackalloc.sroa.13.0.insert.shift141 = shl nuw i64 %stackalloc.sroa.13.0.insert.ext140, 56, !dbg !3061
  %stackalloc.sroa.12.0.insert.ext125 = zext i8 %stackalloc.sroa.12.0 to i64, !dbg !3061
  %stackalloc.sroa.12.0.insert.shift126 = shl nuw nsw i64 %stackalloc.sroa.12.0.insert.ext125, 48, !dbg !3061
  %stackalloc.sroa.12.0.insert.insert128 = or disjoint i64 %stackalloc.sroa.12.0.insert.shift126, %stackalloc.sroa.13.0.insert.shift141, !dbg !3061
  %stackalloc.sroa.11.0.insert.ext110 = zext i8 %stackalloc.sroa.11.0 to i64, !dbg !3061
  %stackalloc.sroa.11.0.insert.shift111 = shl nuw nsw i64 %stackalloc.sroa.11.0.insert.ext110, 40, !dbg !3061
  %stackalloc.sroa.11.0.insert.insert113 = or disjoint i64 %stackalloc.sroa.12.0.insert.insert128, %stackalloc.sroa.11.0.insert.shift111, !dbg !3061
  %stackalloc.sroa.10.0.insert.ext95 = zext i8 %stackalloc.sroa.10.0 to i64, !dbg !3061
  %stackalloc.sroa.10.0.insert.shift96 = shl nuw nsw i64 %stackalloc.sroa.10.0.insert.ext95, 32, !dbg !3061
  %stackalloc.sroa.10.0.insert.insert98 = or disjoint i64 %stackalloc.sroa.11.0.insert.insert113, %stackalloc.sroa.10.0.insert.shift96, !dbg !3061
  %stackalloc.sroa.9.0.insert.ext80 = zext i8 %stackalloc.sroa.9.0 to i64, !dbg !3061
  %stackalloc.sroa.9.0.insert.shift81 = shl nuw nsw i64 %stackalloc.sroa.9.0.insert.ext80, 24, !dbg !3061
  %stackalloc.sroa.9.0.insert.insert83 = or disjoint i64 %stackalloc.sroa.10.0.insert.insert98, %stackalloc.sroa.9.0.insert.shift81, !dbg !3061
  %stackalloc.sroa.8.0.insert.ext65 = zext i8 %stackalloc.sroa.8.0 to i64, !dbg !3061
  %stackalloc.sroa.8.0.insert.shift66 = shl nuw nsw i64 %stackalloc.sroa.8.0.insert.ext65, 16, !dbg !3061
  %stackalloc.sroa.7.0.insert.ext50 = zext i8 %stackalloc.sroa.7.0 to i64, !dbg !3061
  %stackalloc.sroa.7.0.insert.shift51 = shl nuw nsw i64 %stackalloc.sroa.7.0.insert.ext50, 8, !dbg !3061
  %stackalloc.sroa.7.0.insert.mask52 = or disjoint i64 %stackalloc.sroa.9.0.insert.insert83, %stackalloc.sroa.8.0.insert.shift66, !dbg !3061
  %stackalloc.sroa.0.0.insert.ext38 = zext i8 %stackalloc.sroa.0.0 to i64, !dbg !3061
  %stackalloc.sroa.0.0.insert.mask39 = or disjoint i64 %stackalloc.sroa.7.0.insert.mask52, %stackalloc.sroa.7.0.insert.shift51, !dbg !3061
  %stackalloc.sroa.0.0.insert.insert40 = or i64 %stackalloc.sroa.0.0.insert.mask39, %stackalloc.sroa.0.0.insert.ext38, !dbg !3061
    #dbg_value(i64 %stackalloc.sroa.0.0.insert.insert40, !3040, !DIExpression(), !3062)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3063)
  %4 = icmp slt i64 %stackalloc.sroa.0.0.insert.insert40, %n, !dbg !3061
  br i1 %4, label %for.loop1, label %for.done, !dbg !3060

for.loop1:                                        ; preds = %for.loop, %lookup.next
  %stackalloc8.sroa.12.1 = phi i8 [ %stackalloc8.sroa.12.2, %lookup.next ], [ %stackalloc8.sroa.12.0, %for.loop ], !dbg !3060
  %stackalloc8.sroa.11.1 = phi i8 [ %stackalloc8.sroa.11.2, %lookup.next ], [ %stackalloc8.sroa.11.0, %for.loop ], !dbg !3060
  %stackalloc8.sroa.10.1 = phi i8 [ %stackalloc8.sroa.10.2, %lookup.next ], [ %stackalloc8.sroa.10.0, %for.loop ], !dbg !3060
  %stackalloc8.sroa.9.1 = phi i8 [ %stackalloc8.sroa.9.2, %lookup.next ], [ %stackalloc8.sroa.9.0, %for.loop ], !dbg !3060
  %stackalloc8.sroa.8.1 = phi i8 [ %stackalloc8.sroa.8.2, %lookup.next ], [ %stackalloc8.sroa.8.0, %for.loop ], !dbg !3060
  %stackalloc8.sroa.7.1 = phi i8 [ %stackalloc8.sroa.7.2, %lookup.next ], [ %stackalloc8.sroa.7.0, %for.loop ], !dbg !3060
  %stackalloc8.sroa.6.1 = phi i8 [ %stackalloc8.sroa.6.2, %lookup.next ], [ %stackalloc8.sroa.6.0, %for.loop ], !dbg !3060
  %stackalloc8.sroa.0.1 = phi i8 [ %stackalloc8.sroa.0.2, %lookup.next ], [ %stackalloc8.sroa.0.0, %for.loop ], !dbg !3060
  %stackalloc.sroa.13.1 = phi i8 [ %stackalloc.sroa.13.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.13.0, %for.loop ], !dbg !3060
  %stackalloc.sroa.12.1 = phi i8 [ %stackalloc.sroa.12.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.12.0, %for.loop ], !dbg !3060
  %stackalloc.sroa.11.1 = phi i8 [ %stackalloc.sroa.11.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.11.0, %for.loop ], !dbg !3060
  %stackalloc.sroa.10.1 = phi i8 [ %stackalloc.sroa.10.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.10.0, %for.loop ], !dbg !3060
  %stackalloc.sroa.9.1 = phi i8 [ %stackalloc.sroa.9.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.9.0, %for.loop ], !dbg !3060
  %stackalloc.sroa.8.1 = phi i8 [ %stackalloc.sroa.8.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.8.0, %for.loop ], !dbg !3060
  %stackalloc.sroa.7.1 = phi i8 [ %stackalloc.sroa.7.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.7.0, %for.loop ], !dbg !3060
  %stackalloc.sroa.0.1 = phi i8 [ %stackalloc.sroa.0.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.0.0, %for.loop ], !dbg !3060
  %5 = phi i64 [ %16, %lookup.next ], [ %2, %for.loop ], !dbg !3042
    #dbg_value(i64 %5, !3037, !DIExpression(), !3064)
    #dbg_value(i64 %x, !3036, !DIExpression(), !3065)
  %.not = icmp sle i64 %5, %x, !dbg !3066
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
    #dbg_value(!DIArgList(i64 %stackalloc.sroa.13.0.insert.shift146, i64 %stackalloc.sroa.0.0.insert.ext42, i64 %stackalloc.sroa.7.0.insert.shift56, i64 %stackalloc.sroa.8.0.insert.shift71, i64 %stackalloc.sroa.9.0.insert.shift86, i64 %stackalloc.sroa.10.0.insert.shift101, i64 %stackalloc.sroa.11.0.insert.shift116, i64 %stackalloc.sroa.12.0.insert.shift131), !3040, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3067)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3068)
  %10 = icmp slt i64 %stackalloc.sroa.0.0.insert.insert44, %n
  %or.cond = select i1 %.not, i1 %10, i1 false, !dbg !3060
  br i1 %or.cond, label %for.body, label %for.loop3.preheader, !dbg !3060

for.loop3.preheader:                              ; preds = %for.loop1
  br label %for.loop3, !dbg !3060

for.body:                                         ; preds = %for.loop1
    #dbg_value(i64 %5, !3037, !DIExpression(), !3069)
  %11 = icmp slt i64 %5, 1, !dbg !3070
    #dbg_value(i64 %x, !3036, !DIExpression(), !3071)
  %or.cond29 = select i1 %11, i1 %1, i1 false, !dbg !3060
  br i1 %or.cond29, label %if.then, label %if.done, !dbg !3060

if.then:                                          ; preds = %for.body
    #dbg_value(!DIArgList(i64 %stackalloc.sroa.13.0.insert.shift146, i64 %stackalloc.sroa.0.0.insert.ext42, i64 %stackalloc.sroa.7.0.insert.shift56, i64 %stackalloc.sroa.8.0.insert.shift71, i64 %stackalloc.sroa.9.0.insert.shift86, i64 %stackalloc.sroa.10.0.insert.shift101, i64 %stackalloc.sroa.11.0.insert.shift116, i64 %stackalloc.sroa.12.0.insert.shift131), !3040, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3072)
  %stackalloc8.sroa.0.0.extract.trunc = trunc i64 %stackalloc.sroa.0.0.insert.insert44 to i8, !dbg !3073
  %stackalloc8.sroa.6.0.extract.shift = lshr exact i64 %stackalloc.sroa.0.0.insert.mask43, 8, !dbg !3073
  %stackalloc8.sroa.6.0.extract.trunc = trunc i64 %stackalloc8.sroa.6.0.extract.shift to i8, !dbg !3073
    #dbg_value(!DIArgList(i64 %stackalloc.sroa.13.0.insert.shift146, i64 %stackalloc.sroa.0.0.insert.ext42, i64 %stackalloc.sroa.7.0.insert.shift56, i64 %stackalloc.sroa.8.0.insert.shift71, i64 %stackalloc.sroa.9.0.insert.shift86, i64 %stackalloc.sroa.10.0.insert.shift101, i64 %stackalloc.sroa.11.0.insert.shift116, i64 %stackalloc.sroa.12.0.insert.shift131), !3039, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3073)
    #dbg_value(i64 0, !3037, !DIExpression(), !3074)
  br label %if.done, !dbg !3060

if.done:                                          ; preds = %if.then, %for.body
  %stackalloc8.sroa.12.2 = phi i8 [ %stackalloc.sroa.13.1, %if.then ], [ %stackalloc8.sroa.12.1, %for.body ], !dbg !3060
  %stackalloc8.sroa.11.2 = phi i8 [ %stackalloc.sroa.12.1, %if.then ], [ %stackalloc8.sroa.11.1, %for.body ], !dbg !3060
  %stackalloc8.sroa.10.2 = phi i8 [ %stackalloc.sroa.11.1, %if.then ], [ %stackalloc8.sroa.10.1, %for.body ], !dbg !3060
  %stackalloc8.sroa.9.2 = phi i8 [ %stackalloc.sroa.10.1, %if.then ], [ %stackalloc8.sroa.9.1, %for.body ], !dbg !3060
  %stackalloc8.sroa.8.2 = phi i8 [ %stackalloc.sroa.9.1, %if.then ], [ %stackalloc8.sroa.8.1, %for.body ], !dbg !3060
  %stackalloc8.sroa.7.2 = phi i8 [ %stackalloc.sroa.8.1, %if.then ], [ %stackalloc8.sroa.7.1, %for.body ], !dbg !3060
  %stackalloc8.sroa.6.2 = phi i8 [ %stackalloc8.sroa.6.0.extract.trunc, %if.then ], [ %stackalloc8.sroa.6.1, %for.body ], !dbg !3060
  %stackalloc8.sroa.0.2 = phi i8 [ %stackalloc8.sroa.0.0.extract.trunc, %if.then ], [ %stackalloc8.sroa.0.1, %for.body ], !dbg !3060
  %12 = phi i64 [ 0, %if.then ], [ %5, %for.body ], !dbg !3042
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3075)
    #dbg_value(ptr undef, !3050, !DIExpression(), !3054)
    #dbg_value(ptr undef, !3050, !DIExpression(), !3076)
    #dbg_value(!DIArgList(i64 %stackalloc.sroa.13.0.insert.shift146, i64 %stackalloc.sroa.0.0.insert.ext42, i64 %stackalloc.sroa.7.0.insert.shift56, i64 %stackalloc.sroa.8.0.insert.shift71, i64 %stackalloc.sroa.9.0.insert.shift86, i64 %stackalloc.sroa.10.0.insert.shift101, i64 %stackalloc.sroa.11.0.insert.shift116, i64 %stackalloc.sroa.12.0.insert.shift131), !3053, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3077)
    #dbg_value(ptr undef, !3050, !DIExpression(), !3078)
    #dbg_value(!DIArgList(i64 %stackalloc.sroa.13.0.insert.shift146, i64 %stackalloc.sroa.0.0.insert.ext42, i64 %stackalloc.sroa.7.0.insert.shift56, i64 %stackalloc.sroa.8.0.insert.shift71, i64 %stackalloc.sroa.9.0.insert.shift86, i64 %stackalloc.sroa.10.0.insert.shift101, i64 %stackalloc.sroa.11.0.insert.shift116, i64 %stackalloc.sroa.12.0.insert.shift131), !3053, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3079)
  %.not7 = icmp ult i64 %stackalloc.sroa.0.0.insert.insert44, %arr.len, !dbg !3080
  br i1 %.not7, label %lookup.next, label %lookup.throw, !dbg !3080

lookup.next:                                      ; preds = %if.done
  %13 = add nuw nsw i64 %stackalloc.sroa.0.0.insert.insert44, 1, !dbg !3081
  %stackalloc.sroa.13.0.extract.shift = lshr i64 %13, 56, !dbg !3081
  %stackalloc.sroa.13.0.extract.trunc = trunc nuw i64 %stackalloc.sroa.13.0.extract.shift to i8, !dbg !3081
  %stackalloc.sroa.12.0.extract.shift = lshr i64 %13, 48, !dbg !3081
  %stackalloc.sroa.12.0.extract.trunc = trunc i64 %stackalloc.sroa.12.0.extract.shift to i8, !dbg !3081
  %stackalloc.sroa.11.0.extract.shift = lshr i64 %13, 40, !dbg !3081
  %stackalloc.sroa.11.0.extract.trunc = trunc i64 %stackalloc.sroa.11.0.extract.shift to i8, !dbg !3081
  %stackalloc.sroa.10.0.extract.shift = lshr i64 %13, 32, !dbg !3081
  %stackalloc.sroa.10.0.extract.trunc = trunc i64 %stackalloc.sroa.10.0.extract.shift to i8, !dbg !3081
  %stackalloc.sroa.9.0.extract.shift = lshr i64 %13, 24, !dbg !3081
  %stackalloc.sroa.9.0.extract.trunc = trunc i64 %stackalloc.sroa.9.0.extract.shift to i8, !dbg !3081
  %stackalloc.sroa.8.0.extract.shift = lshr i64 %13, 16, !dbg !3081
  %stackalloc.sroa.8.0.extract.trunc = trunc i64 %stackalloc.sroa.8.0.extract.shift to i8, !dbg !3081
  %stackalloc.sroa.7.0.extract.shift = lshr i64 %13, 8, !dbg !3081
  %stackalloc.sroa.7.0.extract.trunc = trunc i64 %stackalloc.sroa.7.0.extract.shift to i8, !dbg !3081
  %stackalloc.sroa.0.0.extract.trunc = trunc i64 %13 to i8, !dbg !3081
  %14 = getelementptr inbounds i64, ptr %arr.data, i64 %stackalloc.sroa.0.0.insert.insert44, !dbg !3080
  %15 = load i64, ptr %14, align 8, !dbg !3080
  %16 = add i64 %15, %12, !dbg !3082
    #dbg_value(i64 %16, !3037, !DIExpression(), !3082)
  br label %for.loop1, !dbg !3060

for.loop3:                                        ; preds = %for.loop3.preheader, %lookup.next11
  %stackalloc8.sroa.12.3 = phi i8 [ %stackalloc8.sroa.12.0.extract.trunc207, %lookup.next11 ], [ %stackalloc8.sroa.12.1, %for.loop3.preheader ], !dbg !3060
  %stackalloc8.sroa.11.3 = phi i8 [ %stackalloc8.sroa.11.0.extract.trunc200, %lookup.next11 ], [ %stackalloc8.sroa.11.1, %for.loop3.preheader ], !dbg !3060
  %stackalloc8.sroa.10.3 = phi i8 [ %stackalloc8.sroa.10.0.extract.trunc193, %lookup.next11 ], [ %stackalloc8.sroa.10.1, %for.loop3.preheader ], !dbg !3060
  %stackalloc8.sroa.9.3 = phi i8 [ %stackalloc8.sroa.9.0.extract.trunc186, %lookup.next11 ], [ %stackalloc8.sroa.9.1, %for.loop3.preheader ], !dbg !3060
  %stackalloc8.sroa.8.3 = phi i8 [ %stackalloc8.sroa.8.0.extract.trunc179, %lookup.next11 ], [ %stackalloc8.sroa.8.1, %for.loop3.preheader ], !dbg !3060
  %stackalloc8.sroa.7.3 = phi i8 [ %stackalloc8.sroa.7.0.extract.trunc172, %lookup.next11 ], [ %stackalloc8.sroa.7.1, %for.loop3.preheader ], !dbg !3060
  %stackalloc8.sroa.6.3 = phi i8 [ %stackalloc8.sroa.6.0.extract.trunc165, %lookup.next11 ], [ %stackalloc8.sroa.6.1, %for.loop3.preheader ], !dbg !3060
  %stackalloc8.sroa.0.3 = phi i8 [ %stackalloc8.sroa.0.0.extract.trunc158, %lookup.next11 ], [ %stackalloc8.sroa.0.1, %for.loop3.preheader ], !dbg !3060
  %17 = phi i64 [ %26, %lookup.next11 ], [ %5, %for.loop3.preheader ], !dbg !3042
  %18 = phi i64 [ %23, %lookup.next11 ], [ %3, %for.loop3.preheader ], !dbg !3057
    #dbg_value(i64 %17, !3037, !DIExpression(), !3083)
    #dbg_value(i64 %x, !3036, !DIExpression(), !3084)
  %19 = icmp sgt i64 %17, %x, !dbg !3085
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
    #dbg_value(i64 %stackalloc8.sroa.0.0.insert.insert, !3039, !DIExpression(), !3086)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3087)
  %20 = icmp slt i64 %stackalloc8.sroa.0.0.insert.insert, %n
  %or.cond31 = select i1 %19, i1 %20, i1 false, !dbg !3060
  br i1 %or.cond31, label %for.body5, label %for.loop, !dbg !3060

for.body5:                                        ; preds = %for.loop3
    #dbg_value(!DIArgList(i64 %stackalloc.sroa.13.0.insert.shift146, i64 %stackalloc.sroa.0.0.insert.ext42, i64 %stackalloc.sroa.7.0.insert.shift56, i64 %stackalloc.sroa.8.0.insert.shift71, i64 %stackalloc.sroa.9.0.insert.shift86, i64 %stackalloc.sroa.10.0.insert.shift101, i64 %stackalloc.sroa.11.0.insert.shift116, i64 %stackalloc.sroa.12.0.insert.shift131), !3040, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3088)
    #dbg_value(i64 %stackalloc8.sroa.0.0.insert.insert, !3039, !DIExpression(), !3089)
    #dbg_value(i64 %18, !3038, !DIExpression(), !3090)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3091)
    #dbg_value(ptr undef, !3044, !DIExpression(), !3048)
    #dbg_value(ptr undef, !3044, !DIExpression(), !3092)
    #dbg_value(i64 %stackalloc8.sroa.0.0.insert.insert, !3047, !DIExpression(), !3093)
    #dbg_value(ptr undef, !3044, !DIExpression(), !3094)
    #dbg_value(i64 %stackalloc8.sroa.0.0.insert.insert, !3047, !DIExpression(), !3095)
  %.not6 = icmp ult i64 %stackalloc8.sroa.0.0.insert.insert, %arr.len, !dbg !3096
  br i1 %.not6, label %lookup.next11, label %lookup.throw10, !dbg !3096

lookup.next11:                                    ; preds = %for.body5
  %21 = add nuw nsw i64 %stackalloc8.sroa.0.0.insert.insert, 1, !dbg !3097
  %stackalloc8.sroa.12.0.extract.shift206 = lshr i64 %21, 56, !dbg !3097
  %stackalloc8.sroa.12.0.extract.trunc207 = trunc nuw i64 %stackalloc8.sroa.12.0.extract.shift206 to i8, !dbg !3097
  %stackalloc8.sroa.11.0.extract.shift199 = lshr i64 %21, 48, !dbg !3097
  %stackalloc8.sroa.11.0.extract.trunc200 = trunc i64 %stackalloc8.sroa.11.0.extract.shift199 to i8, !dbg !3097
  %stackalloc8.sroa.10.0.extract.shift192 = lshr i64 %21, 40, !dbg !3097
  %stackalloc8.sroa.10.0.extract.trunc193 = trunc i64 %stackalloc8.sroa.10.0.extract.shift192 to i8, !dbg !3097
  %stackalloc8.sroa.9.0.extract.shift185 = lshr i64 %21, 32, !dbg !3097
  %stackalloc8.sroa.9.0.extract.trunc186 = trunc i64 %stackalloc8.sroa.9.0.extract.shift185 to i8, !dbg !3097
  %stackalloc8.sroa.8.0.extract.shift178 = lshr i64 %21, 24, !dbg !3097
  %stackalloc8.sroa.8.0.extract.trunc179 = trunc i64 %stackalloc8.sroa.8.0.extract.shift178 to i8, !dbg !3097
  %stackalloc8.sroa.7.0.extract.shift171 = lshr i64 %21, 16, !dbg !3097
  %stackalloc8.sroa.7.0.extract.trunc172 = trunc i64 %stackalloc8.sroa.7.0.extract.shift171 to i8, !dbg !3097
  %stackalloc8.sroa.6.0.extract.shift164 = lshr i64 %21, 8, !dbg !3097
  %stackalloc8.sroa.6.0.extract.trunc165 = trunc i64 %stackalloc8.sroa.6.0.extract.shift164 to i8, !dbg !3097
  %stackalloc8.sroa.0.0.extract.trunc158 = trunc i64 %21 to i8, !dbg !3097
  %22 = sub i64 %stackalloc.sroa.0.0.insert.insert44, %stackalloc8.sroa.0.0.insert.insert, !dbg !3098
  %23 = tail call i64 @llvm.smin.i64(i64 %22, i64 %18), !dbg !3060
  %24 = getelementptr inbounds i64, ptr %arr.data, i64 %stackalloc8.sroa.0.0.insert.insert, !dbg !3096
  %25 = load i64, ptr %24, align 8, !dbg !3096
  %26 = sub i64 %17, %25, !dbg !3099
    #dbg_value(i64 %26, !3037, !DIExpression(), !3099)
  br label %for.loop3, !dbg !3060

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !3038, !DIExpression(), !3100)
  ret i64 %3, !dbg !3101

lookup.throw:                                     ; preds = %if.done
  tail call fastcc void @runtime.lookupPanic(), !dbg !3080
  unreachable, !dbg !3080

lookup.throw10:                                   ; preds = %for.body5
  tail call fastcc void @runtime.lookupPanic(), !dbg !3096
  unreachable, !dbg !3096
}
