define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %arr_size) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %arr_size, !3035, !DIExpression(), !3039)
    #dbg_value(i64 0, !3036, !DIExpression(), !3040)
  %0 = icmp sgt i64 %arr_size, 0, !dbg !3041
  br i1 %0, label %for.loop1.preheader.lr.ph, label %common.ret, !dbg !3042

for.loop1.preheader.lr.ph:                        ; preds = %entry
  %1 = add nsw i64 %arr_size, -1, !dbg !3042
  %.not18.not = icmp ugt i64 %arr.len, %1
  br label %for.body2.lr.ph, !dbg !3042

for.body2.lr.ph:                                  ; preds = %if.done4, %for.loop1.preheader.lr.ph
  %2 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %15, %if.done4 ]
    #dbg_value(i64 %2, !3036, !DIExpression(), !3043)
    #dbg_value(i64 0, !3038, !DIExpression(), !3044)
    #dbg_value(i64 %arr_size, !3035, !DIExpression(), !3045)
  %.not3 = icmp ult i64 %2, %arr.len
  br i1 %.not3, label %for.body2.lr.ph.split, label %lookup.throw, !dbg !3046

for.body2.lr.ph.split:                            ; preds = %for.body2.lr.ph
  %3 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2
  %4 = load i64, ptr %3, align 8
  br i1 %.not18.not, label %for.body2, label %lookup.throw8, !dbg !3047

for.body2:                                        ; preds = %for.body2.lr.ph.split, %for.body2
  %5 = phi i64 [ %11, %for.body2 ], [ 0, %for.body2.lr.ph.split ]
  %6 = phi i64 [ %spec.select, %for.body2 ], [ 0, %for.body2.lr.ph.split ]
    #dbg_value(i64 %2, !3036, !DIExpression(), !3048)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3049)
    #dbg_value(i64 %5, !3038, !DIExpression(), !3050)
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %5, !dbg !3047
  %8 = load i64, ptr %7, align 8, !dbg !3047
  %9 = icmp eq i64 %4, %8, !dbg !3051
  %10 = zext i1 %9 to i64, !dbg !3042
  %spec.select = add i64 %6, %10, !dbg !3042
  %11 = add nuw nsw i64 %5, 1, !dbg !3052
    #dbg_value(i64 %11, !3038, !DIExpression(), !3044)
    #dbg_value(i64 %arr_size, !3035, !DIExpression(), !3045)
  %exitcond.not = icmp eq i64 %11, %arr_size, !dbg !3053
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3042

for.done:                                         ; preds = %for.body2
    #dbg_value(i64 %spec.select, !3037, !DIExpression(), !3054)
  %12 = and i64 %spec.select, 1, !dbg !3055
  %.not = icmp eq i64 %12, 0, !dbg !3055
  br i1 %.not, label %if.done4, label %if.then3, !dbg !3042

if.then3:                                         ; preds = %for.done
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3056)
    #dbg_value(i64 %2, !3036, !DIExpression(), !3057)
  %.not2 = icmp ult i64 %2, %arr.len, !dbg !3058
  br i1 %.not2, label %lookup.next13, label %lookup.throw12, !dbg !3058

common.ret:                                       ; preds = %if.done4, %entry, %lookup.next13
  %common.ret.op = phi i64 [ %14, %lookup.next13 ], [ -1, %entry ], [ -1, %if.done4 ]
  ret i64 %common.ret.op, !dbg !3042

lookup.next13:                                    ; preds = %if.then3
  %13 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2, !dbg !3058
  %14 = load i64, ptr %13, align 8, !dbg !3058
  br label %common.ret, !dbg !3059

if.done4:                                         ; preds = %for.done
  %15 = add nuw nsw i64 %2, 1, !dbg !3060
    #dbg_value(i64 %15, !3036, !DIExpression(), !3043)
    #dbg_value(i64 %arr_size, !3035, !DIExpression(), !3061)
  %exitcond17.not = icmp eq i64 %15, %arr_size, !dbg !3041
  br i1 %exitcond17.not, label %common.ret, label %for.body2.lr.ph, !dbg !3042

lookup.throw:                                     ; preds = %for.body2.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3046
  unreachable, !dbg !3046

lookup.throw8:                                    ; preds = %for.body2.lr.ph.split
  tail call fastcc void @runtime.lookupPanic(), !dbg !3047
  unreachable, !dbg !3047

lookup.throw12:                                   ; preds = %if.then3
  tail call fastcc void @runtime.lookupPanic(), !dbg !3058
  unreachable, !dbg !3058
}
