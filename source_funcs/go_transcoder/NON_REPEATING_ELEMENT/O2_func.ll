define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3038)
    #dbg_value(i64 0, !3036, !DIExpression(), !3039)
  %0 = icmp sgt i64 %n, 0, !dbg !3040
  br i1 %0, label %for.body2.lr.ph, label %common.ret, !dbg !3041

for.body2.lr.ph:                                  ; preds = %entry, %if.done3
  %1 = phi i64 [ %12, %if.done3 ], [ 0, %entry ]
    #dbg_value(i64 %1, !3036, !DIExpression(), !3042)
    #dbg_value(i64 0, !3037, !DIExpression(), !3043)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3044)
  %.not2 = icmp ult i64 %1, %arr.len
  %2 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1
  br label %for.body2, !dbg !3041

for.body2:                                        ; preds = %for.body2.lr.ph, %if.done
  %3 = phi i64 [ 0, %for.body2.lr.ph ], [ %8, %if.done ]
    #dbg_value(i64 %1, !3036, !DIExpression(), !3045)
    #dbg_value(i64 %3, !3037, !DIExpression(), !3046)
  %.not = icmp eq i64 %1, %3, !dbg !3047
  br i1 %.not, label %if.done, label %cond.true, !dbg !3041

cond.true:                                        ; preds = %for.body2
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3048)
    #dbg_value(i64 %1, !3036, !DIExpression(), !3049)
  br i1 %.not2, label %lookup.next, label %lookup.throw, !dbg !3050

lookup.next:                                      ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3051)
    #dbg_value(i64 %3, !3037, !DIExpression(), !3052)
  %.not3 = icmp ult i64 %3, %arr.len, !dbg !3053
  br i1 %.not3, label %lookup.next8, label %lookup.throw7, !dbg !3053

lookup.next8:                                     ; preds = %lookup.next
  %4 = load i64, ptr %2, align 8, !dbg !3050
  %5 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %3, !dbg !3053
  %6 = load i64, ptr %5, align 8, !dbg !3053
  %7 = icmp eq i64 %4, %6, !dbg !3054
  br i1 %7, label %for.done, label %if.done, !dbg !3041

if.done:                                          ; preds = %lookup.next8, %for.body2
  %8 = add nuw nsw i64 %3, 1, !dbg !3055
    #dbg_value(i64 %8, !3037, !DIExpression(), !3043)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3044)
  %exitcond.not = icmp eq i64 %8, %n, !dbg !3056
  br i1 %exitcond.not, label %if.then, label %for.body2, !dbg !3041

for.done:                                         ; preds = %lookup.next8
    #dbg_value(i64 %3, !3037, !DIExpression(), !3057)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3058)
  %9 = icmp eq i64 %3, %n, !dbg !3059
  br i1 %9, label %if.then, label %if.done3, !dbg !3041

if.then:                                          ; preds = %for.done, %if.done
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3060)
    #dbg_value(i64 %1, !3036, !DIExpression(), !3061)
  %.not4 = icmp ult i64 %1, %arr.len, !dbg !3062
  br i1 %.not4, label %lookup.next12, label %lookup.throw11, !dbg !3062

common.ret:                                       ; preds = %if.done3, %entry, %lookup.next12
  %common.ret.op = phi i64 [ %11, %lookup.next12 ], [ -1, %entry ], [ -1, %if.done3 ]
  ret i64 %common.ret.op, !dbg !3041

lookup.next12:                                    ; preds = %if.then
  %10 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1, !dbg !3062
  %11 = load i64, ptr %10, align 8, !dbg !3062
  br label %common.ret, !dbg !3063

if.done3:                                         ; preds = %for.done
  %12 = add nuw nsw i64 %1, 1, !dbg !3064
    #dbg_value(i64 %12, !3036, !DIExpression(), !3042)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3065)
  %exitcond18.not = icmp eq i64 %12, %n, !dbg !3040
  br i1 %exitcond18.not, label %common.ret, label %for.body2.lr.ph, !dbg !3041

lookup.throw:                                     ; preds = %cond.true
  tail call fastcc void @runtime.lookupPanic(), !dbg !3050
  unreachable, !dbg !3050

lookup.throw7:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3053
  unreachable, !dbg !3053

lookup.throw11:                                   ; preds = %if.then
  tail call fastcc void @runtime.lookupPanic(), !dbg !3062
  unreachable, !dbg !3062
}
