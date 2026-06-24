define range(i64 -4611686018427387904, 4611686018427387904) i64 @f_gold(ptr nocapture readonly %ar1.data, i64 %ar1.len, i64 %ar1.cap, ptr nocapture readonly %ar2.data, i64 %ar2.len, i64 %ar2.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %ar1.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3042)
    #dbg_value(i64 %ar1.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3042)
    #dbg_value(i64 %ar1.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3042)
    #dbg_value(ptr %ar2.data, !3035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3042)
    #dbg_value(i64 %ar2.len, !3035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3042)
    #dbg_value(i64 %ar2.cap, !3035, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3042)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3042)
    #dbg_value(i64 0, !3037, !DIExpression(), !3043)
    #dbg_value(i64 0, !3038, !DIExpression(), !3044)
    #dbg_value(i64 -1, !3040, !DIExpression(), !3045)
    #dbg_value(i64 -1, !3041, !DIExpression(), !3046)
    #dbg_value(i64 0, !3039, !DIExpression(), !3047)
  %.not21 = icmp slt i64 %n, 0, !dbg !3048
  br i1 %.not21, label %for.done, label %for.body, !dbg !3049

for.body:                                         ; preds = %entry, %lookup.next16
  %0 = phi i64 [ %17, %lookup.next16 ], [ -1, %entry ]
  %1 = phi i64 [ %18, %lookup.next16 ], [ 0, %entry ]
  %2 = phi i64 [ %16, %lookup.next16 ], [ 0, %entry ]
  %3 = phi i64 [ %14, %lookup.next16 ], [ 0, %entry ]
    #dbg_value(i64 %1, !3039, !DIExpression(), !3050)
    #dbg_value(i64 %3, !3037, !DIExpression(), !3051)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3052)
  %4 = icmp eq i64 %3, %n, !dbg !3053
  br i1 %4, label %if.then, label %if.else, !dbg !3049

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %0, !3041, !DIExpression(), !3054)
    #dbg_value(i64 %0, !3040, !DIExpression(), !3055)
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3056)
  %5 = icmp eq i64 %ar2.len, 0, !dbg !3057
  br i1 %5, label %lookup.throw, label %for.done.sink.split, !dbg !3057

if.else:                                          ; preds = %for.body
    #dbg_value(i64 %2, !3038, !DIExpression(), !3058)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3059)
  %6 = icmp eq i64 %2, %n, !dbg !3060
  br i1 %6, label %if.then1, label %if.done, !dbg !3049

if.then1:                                         ; preds = %if.else
    #dbg_value(i64 %0, !3041, !DIExpression(), !3061)
    #dbg_value(i64 %0, !3040, !DIExpression(), !3062)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3063)
  %7 = icmp eq i64 %ar1.len, 0, !dbg !3064
  br i1 %7, label %lookup.throw7, label %for.done.sink.split, !dbg !3064

if.done:                                          ; preds = %if.else
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3065)
    #dbg_value(i64 %3, !3037, !DIExpression(), !3066)
  %.not3 = icmp ult i64 %3, %ar1.len, !dbg !3067
  br i1 %.not3, label %lookup.next12, label %lookup.throw11, !dbg !3067

lookup.next12:                                    ; preds = %if.done
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3068)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3069)
  %.not4 = icmp ult i64 %2, %ar2.len, !dbg !3070
  br i1 %.not4, label %lookup.next16, label %lookup.throw15, !dbg !3070

lookup.next16:                                    ; preds = %lookup.next12
  %8 = getelementptr inbounds i64, ptr %ar1.data, i64 %3, !dbg !3067
  %9 = load i64, ptr %8, align 8, !dbg !3067
  %10 = getelementptr inbounds i64, ptr %ar2.data, i64 %2, !dbg !3070
  %11 = load i64, ptr %10, align 8, !dbg !3070
  %12 = icmp slt i64 %9, %11, !dbg !3071
  %13 = zext i1 %12 to i64, !dbg !3049
  %14 = add nuw i64 %3, %13, !dbg !3049
  %not. = xor i1 %12, true, !dbg !3049
  %15 = zext i1 %not. to i64, !dbg !3049
  %16 = add nuw i64 %2, %15, !dbg !3049
  %17 = call i64 @llvm.smin.i64(i64 %9, i64 %11), !dbg !3049
  %18 = add i64 %1, 1, !dbg !3072
    #dbg_value(i64 %18, !3039, !DIExpression(), !3050)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3073)
  %.not = icmp sgt i64 %18, %n, !dbg !3048
  br i1 %.not, label %for.done, label %for.body, !dbg !3049

for.done.sink.split:                              ; preds = %if.then1, %if.then
  %ar1.data.sink = phi ptr [ %ar2.data, %if.then ], [ %ar1.data, %if.then1 ]
  %19 = load i64, ptr %ar1.data.sink, align 8, !dbg !3049
  br label %for.done, !dbg !3074

for.done:                                         ; preds = %for.done.sink.split, %lookup.next16, %entry
  %20 = phi i64 [ -1, %entry ], [ %0, %lookup.next16 ], [ %0, %for.done.sink.split ], !dbg !3045
  %21 = phi i64 [ -1, %entry ], [ %17, %lookup.next16 ], [ %19, %for.done.sink.split ], !dbg !3046
    #dbg_value(i64 %20, !3040, !DIExpression(), !3075)
    #dbg_value(i64 %21, !3041, !DIExpression(), !3076)
  %22 = add i64 %21, %20, !dbg !3074
  %23 = sdiv i64 %22, 2, !dbg !3077
  ret i64 %23, !dbg !3078

lookup.throw:                                     ; preds = %if.then
  tail call fastcc void @runtime.lookupPanic(), !dbg !3057
  unreachable, !dbg !3057

lookup.throw7:                                    ; preds = %if.then1
  tail call fastcc void @runtime.lookupPanic(), !dbg !3064
  unreachable, !dbg !3064

lookup.throw11:                                   ; preds = %if.done
  tail call fastcc void @runtime.lookupPanic(), !dbg !3067
  unreachable, !dbg !3067

lookup.throw15:                                   ; preds = %lookup.next12
  tail call fastcc void @runtime.lookupPanic(), !dbg !3070
  unreachable, !dbg !3070
}
