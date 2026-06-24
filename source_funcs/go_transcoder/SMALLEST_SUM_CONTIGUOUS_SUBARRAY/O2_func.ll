define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3039)
    #dbg_value(i64 9223372036854775807, !3036, !DIExpression(), !3040)
    #dbg_value(i64 9223372036854775807, !3037, !DIExpression(), !3041)
    #dbg_value(i64 0, !3038, !DIExpression(), !3042)
  %0 = icmp sgt i64 %n, 0, !dbg !3043
  br i1 %0, label %for.body, label %for.done, !dbg !3044

for.body:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %8, %if.done ], [ 0, %entry ]
  %2 = phi i64 [ %x.y.i, %if.done ], [ 9223372036854775807, %entry ]
  %3 = phi i64 [ %7, %if.done ], [ 9223372036854775807, %entry ]
    #dbg_value(i64 %1, !3038, !DIExpression(), !3045)
    #dbg_value(i64 %3, !3036, !DIExpression(), !3046)
  %4 = icmp sgt i64 %3, 0, !dbg !3047
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3048)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3049)
    #dbg_value(i64 %1, !3038, !DIExpression(), !3050)
    #dbg_value(i64 %1, !3038, !DIExpression(), !3051)
  %.not2 = icmp ult i64 %1, %arr.len, !dbg !3044
  br i1 %4, label %if.then, label %if.else, !dbg !3044

if.then:                                          ; preds = %for.body
  br i1 %.not2, label %lookup.next, label %lookup.throw, !dbg !3052

lookup.next:                                      ; preds = %if.then
  %5 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1, !dbg !3052
  %6 = load i64, ptr %5, align 8, !dbg !3052
    #dbg_value(i64 %6, !3036, !DIExpression(), !3053)
  br label %if.done, !dbg !3044

if.done:                                          ; preds = %lookup.next4, %lookup.next
  %7 = phi i64 [ %6, %lookup.next ], [ %11, %lookup.next4 ], !dbg !3040
    #dbg_value(i64 %2, !3037, !DIExpression(), !3054)
    #dbg_value(i64 %7, !3036, !DIExpression(), !3055)
    #dbg_value(i64 %2, !3056, !DIExpression(), !3062)
    #dbg_value(i64 %7, !3061, !DIExpression(), !3064)
  %x.y.i = tail call i64 @llvm.smin.i64(i64 %2, i64 %7), !dbg !3065
    #dbg_value(i64 %x.y.i, !3037, !DIExpression(), !3066)
  %8 = add nuw nsw i64 %1, 1, !dbg !3067
    #dbg_value(i64 %8, !3038, !DIExpression(), !3045)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3068)
  %exitcond.not = icmp eq i64 %8, %n, !dbg !3043
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3044

if.else:                                          ; preds = %for.body
  br i1 %.not2, label %lookup.next4, label %lookup.throw3, !dbg !3069

lookup.next4:                                     ; preds = %if.else
  %9 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1, !dbg !3069
  %10 = load i64, ptr %9, align 8, !dbg !3069
  %11 = add i64 %10, %3, !dbg !3070
    #dbg_value(i64 %11, !3036, !DIExpression(), !3070)
  br label %if.done, !dbg !3044

for.done:                                         ; preds = %if.done, %entry
  %.lcssa = phi i64 [ 9223372036854775807, %entry ], [ %x.y.i, %if.done ], !dbg !3041
    #dbg_value(i64 %.lcssa, !3037, !DIExpression(), !3071)
  ret i64 %.lcssa, !dbg !3072

lookup.throw:                                     ; preds = %if.then
  tail call fastcc void @runtime.lookupPanic(), !dbg !3052
  unreachable, !dbg !3052

lookup.throw3:                                    ; preds = %if.else
  tail call fastcc void @runtime.lookupPanic(), !dbg !3069
  unreachable, !dbg !3069
}
