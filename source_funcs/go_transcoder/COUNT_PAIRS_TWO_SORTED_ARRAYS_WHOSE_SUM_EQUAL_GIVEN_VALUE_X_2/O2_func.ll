define i64 @f_gold(ptr nocapture readonly %arr1.data, i64 %arr1.len, i64 %arr1.cap, ptr nocapture readonly %arr2.data, i64 %arr2.len, i64 %arr2.cap, i64 %m, i64 %n, i64 %x) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr1.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3042)
    #dbg_value(i64 %arr1.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3042)
    #dbg_value(i64 %arr1.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3042)
    #dbg_value(ptr %arr2.data, !3035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3042)
    #dbg_value(i64 %arr2.len, !3035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3042)
    #dbg_value(i64 %arr2.cap, !3035, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3042)
    #dbg_value(i64 %m, !3036, !DIExpression(), !3042)
    #dbg_value(i64 %x, !3038, !DIExpression(), !3042)
    #dbg_value(i64 0, !3039, !DIExpression(), !3043)
    #dbg_value(i64 0, !3040, !DIExpression(), !3044)
    #dbg_value(i64 %n, !3037, !DIExpression(), !3045)
  %0 = add i64 %n, -1, !dbg !3046
    #dbg_value(i64 %0, !3041, !DIExpression(), !3047)
  %1 = icmp sgt i64 %m, 0
  %2 = icmp sgt i64 %0, -1
  %or.cond222429 = select i1 %1, i1 %2, i1 false, !dbg !3048
  br i1 %or.cond222429, label %for.body.lr.ph.lr.ph, label %for.done, !dbg !3048

for.body.lr.ph.lr.ph:                             ; preds = %entry, %if.then
  %.ph932 = phi i64 [ %11, %if.then ], [ %0, %entry ]
  %.ph831 = phi i64 [ %10, %if.then ], [ 0, %entry ]
  %.ph30 = phi i64 [ %12, %if.then ], [ 0, %entry ]
  %umax = call i64 @llvm.umax.i64(i64 %.ph831, i64 %arr1.len), !dbg !3048
  br label %for.body.lr.ph, !dbg !3048

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.lr.ph, %if.then1
  %.ph1226 = phi i64 [ %.ph932, %for.body.lr.ph.lr.ph ], [ %4, %if.then1 ]
  %.ph1125 = phi i64 [ %.ph831, %for.body.lr.ph.lr.ph ], [ %16, %if.then1 ]
    #dbg_value(i64 %.ph1226, !3041, !DIExpression(), !3049)
    #dbg_value(i64 %.ph1125, !3040, !DIExpression(), !3050)
  %3 = getelementptr inbounds i64, ptr %arr1.data, i64 %.ph1125
  %exitcond.not = icmp eq i64 %.ph1125, %umax
  br i1 %exitcond.not, label %lookup.throw, label %for.body, !dbg !3051

for.body:                                         ; preds = %for.body.lr.ph, %if.else2
  %4 = phi i64 [ %19, %if.else2 ], [ %.ph1226, %for.body.lr.ph ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3052)
    #dbg_value(i64 %.ph1125, !3040, !DIExpression(), !3053)
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3054)
    #dbg_value(i64 %4, !3041, !DIExpression(), !3055)
  %.not2 = icmp ult i64 %4, %arr2.len, !dbg !3056
  br i1 %.not2, label %lookup.next6, label %lookup.throw5, !dbg !3056

lookup.next6:                                     ; preds = %for.body
  %5 = load i64, ptr %3, align 8, !dbg !3051
  %6 = getelementptr inbounds nuw i64, ptr %arr2.data, i64 %4, !dbg !3056
  %7 = load i64, ptr %6, align 8, !dbg !3056
  %8 = add i64 %7, %5, !dbg !3057
    #dbg_value(i64 %x, !3038, !DIExpression(), !3058)
  %9 = icmp eq i64 %8, %x, !dbg !3059
  br i1 %9, label %if.then, label %lookup.next14, !dbg !3048

if.then:                                          ; preds = %lookup.next6
  %10 = add nuw i64 %.ph1125, 1, !dbg !3060
    #dbg_value(i64 %10, !3040, !DIExpression(), !3060)
  %11 = add nsw i64 %4, -1, !dbg !3061
    #dbg_value(i64 %11, !3041, !DIExpression(), !3061)
  %12 = add i64 %.ph30, 1, !dbg !3062
    #dbg_value(i64 %12, !3039, !DIExpression(), !3062)
  %13 = icmp slt i64 %10, %m
  %14 = icmp sgt i64 %4, 0
  %or.cond2224 = and i1 %13, %14, !dbg !3048
  br i1 %or.cond2224, label %for.body.lr.ph.lr.ph, label %for.done, !dbg !3048

lookup.next14:                                    ; preds = %lookup.next6
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3063)
    #dbg_value(i64 %.ph1125, !3040, !DIExpression(), !3064)
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3065)
    #dbg_value(i64 %4, !3041, !DIExpression(), !3066)
    #dbg_value(i64 %x, !3038, !DIExpression(), !3067)
  %15 = icmp slt i64 %8, %x, !dbg !3068
  br i1 %15, label %if.then1, label %if.else2, !dbg !3048

if.then1:                                         ; preds = %lookup.next14
  %16 = add i64 %.ph1125, 1, !dbg !3069
    #dbg_value(i64 %16, !3040, !DIExpression(), !3069)
  %17 = icmp slt i64 %16, %m
    #dbg_value(i64 %m, !3036, !DIExpression(), !3070)
    #dbg_value(i64 %4, !3041, !DIExpression(), !3049)
  %18 = icmp sgt i64 %4, -1
  %or.cond22 = and i1 %17, %18, !dbg !3048
  br i1 %or.cond22, label %for.body.lr.ph, label %for.done, !dbg !3048

if.else2:                                         ; preds = %lookup.next14
  %19 = add nsw i64 %4, -1, !dbg !3071
    #dbg_value(i64 %.ph1125, !3040, !DIExpression(), !3050)
    #dbg_value(i64 %m, !3036, !DIExpression(), !3070)
    #dbg_value(i64 %19, !3041, !DIExpression(), !3049)
  %20 = icmp sgt i64 %4, 0
  br i1 %20, label %for.body, label %for.done, !dbg !3048

for.done:                                         ; preds = %if.then, %if.then1, %if.else2, %entry
  %.ph.lcssa21 = phi i64 [ 0, %entry ], [ %.ph30, %if.else2 ], [ %.ph30, %if.then1 ], [ %12, %if.then ]
    #dbg_value(i64 %.ph.lcssa21, !3039, !DIExpression(), !3072)
  ret i64 %.ph.lcssa21, !dbg !3073

lookup.throw:                                     ; preds = %for.body.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3051
  unreachable, !dbg !3051

lookup.throw5:                                    ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3056
  unreachable, !dbg !3056
}
