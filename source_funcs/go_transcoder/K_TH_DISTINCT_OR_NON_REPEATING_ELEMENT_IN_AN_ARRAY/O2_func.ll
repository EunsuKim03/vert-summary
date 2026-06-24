define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %k) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3040)
    #dbg_value(i64 %k, !3036, !DIExpression(), !3040)
    #dbg_value(i64 0, !3037, !DIExpression(), !3041)
    #dbg_value(i64 0, !3038, !DIExpression(), !3042)
  %0 = icmp sgt i64 %n, 0, !dbg !3043
  br i1 %0, label %for.body2.lr.ph, label %common.ret, !dbg !3044

for.body2.lr.ph:                                  ; preds = %entry, %if.done5
  %1 = phi i64 [ %15, %if.done5 ], [ 0, %entry ]
  %2 = phi i64 [ %spec.select, %if.done5 ], [ 0, %entry ]
    #dbg_value(i64 %1, !3038, !DIExpression(), !3045)
    #dbg_value(i64 0, !3039, !DIExpression(), !3046)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3047)
  %.not4 = icmp ult i64 %1, %arr.len
  %3 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1
  br label %for.body2, !dbg !3044

for.body2:                                        ; preds = %for.body2.lr.ph, %if.done
  %4 = phi i64 [ 0, %for.body2.lr.ph ], [ %9, %if.done ]
    #dbg_value(i64 %1, !3038, !DIExpression(), !3048)
    #dbg_value(i64 %4, !3039, !DIExpression(), !3049)
  %.not = icmp eq i64 %1, %4, !dbg !3050
  br i1 %.not, label %if.done, label %cond.true, !dbg !3044

cond.true:                                        ; preds = %for.body2
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3051)
    #dbg_value(i64 %4, !3039, !DIExpression(), !3052)
  %.not3 = icmp ult i64 %4, %arr.len, !dbg !3053
  br i1 %.not3, label %lookup.next, label %lookup.throw, !dbg !3053

lookup.next:                                      ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3054)
    #dbg_value(i64 %1, !3038, !DIExpression(), !3055)
  br i1 %.not4, label %lookup.next10, label %lookup.throw9, !dbg !3056

lookup.next10:                                    ; preds = %lookup.next
  %5 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4, !dbg !3053
  %6 = load i64, ptr %5, align 8, !dbg !3053
  %7 = load i64, ptr %3, align 8, !dbg !3056
  %8 = icmp eq i64 %6, %7, !dbg !3057
  br i1 %8, label %for.done, label %if.done, !dbg !3044

if.done:                                          ; preds = %lookup.next10, %for.body2
  %9 = add nuw nsw i64 %4, 1, !dbg !3058
    #dbg_value(i64 %9, !3039, !DIExpression(), !3046)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3047)
  %exitcond.not = icmp eq i64 %9, %n, !dbg !3059
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3044

for.done:                                         ; preds = %if.done, %lookup.next10
  %.lcssa.ph = phi i64 [ %n, %if.done ], [ %4, %lookup.next10 ]
    #dbg_value(i64 %.lcssa.ph, !3039, !DIExpression(), !3060)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3061)
  %10 = icmp eq i64 %.lcssa.ph, %n, !dbg !3062
  %11 = zext i1 %10 to i64, !dbg !3044
  %spec.select = add i64 %2, %11, !dbg !3044
    #dbg_value(i64 %spec.select, !3037, !DIExpression(), !3063)
    #dbg_value(i64 %k, !3036, !DIExpression(), !3064)
  %12 = icmp eq i64 %spec.select, %k, !dbg !3065
  br i1 %12, label %if.then4, label %if.done5, !dbg !3044

if.then4:                                         ; preds = %for.done
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3066)
    #dbg_value(i64 %1, !3038, !DIExpression(), !3067)
  %.not5 = icmp ult i64 %1, %arr.len, !dbg !3068
  br i1 %.not5, label %lookup.next14, label %lookup.throw13, !dbg !3068

common.ret:                                       ; preds = %if.done5, %entry, %lookup.next14
  %common.ret.op = phi i64 [ %14, %lookup.next14 ], [ -1, %entry ], [ -1, %if.done5 ]
  ret i64 %common.ret.op, !dbg !3044

lookup.next14:                                    ; preds = %if.then4
  %13 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1, !dbg !3068
  %14 = load i64, ptr %13, align 8, !dbg !3068
  br label %common.ret, !dbg !3069

if.done5:                                         ; preds = %for.done
  %15 = add nuw nsw i64 %1, 1, !dbg !3070
    #dbg_value(i64 %15, !3038, !DIExpression(), !3045)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3071)
  %exitcond20.not = icmp eq i64 %15, %n, !dbg !3043
  br i1 %exitcond20.not, label %common.ret, label %for.body2.lr.ph, !dbg !3044

lookup.throw:                                     ; preds = %cond.true
  tail call fastcc void @runtime.lookupPanic(), !dbg !3053
  unreachable, !dbg !3053

lookup.throw9:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3056
  unreachable, !dbg !3056

lookup.throw13:                                   ; preds = %if.then4
  tail call fastcc void @runtime.lookupPanic(), !dbg !3068
  unreachable, !dbg !3068
}
