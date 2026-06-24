define i64 @f_gold(ptr nocapture readonly %tree.data, i64 %tree.len, i64 %tree.cap, i64 %k) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(ptr %tree.data, !3030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3036)
    #dbg_value(i64 %tree.len, !3030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3036)
    #dbg_value(i64 %tree.cap, !3030, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3036)
    #dbg_value(i64 %k, !3031, !DIExpression(), !3036)
    #dbg_value(i64 -1, !3032, !DIExpression(), !3037)
    #dbg_value(i64 0, !3033, !DIExpression(), !3038)
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3039)
    #dbg_value(i64 %tree.len, !3034, !DIExpression(), !3040)
    #dbg_value(i64 0, !3035, !DIExpression(), !3041)
  %0 = icmp sgt i64 %tree.len, 0, !dbg !3042
  br i1 %0, label %lookup.next, label %for.done, !dbg !3043

lookup.next:                                      ; preds = %entry, %if.done
  %1 = phi i64 [ %9, %if.done ], [ 0, %entry ]
  %2 = phi i64 [ %8, %if.done ], [ 0, %entry ]
  %3 = phi i64 [ %7, %if.done ], [ -1, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3044)
    #dbg_value(i64 %1, !3035, !DIExpression(), !3045)
  %4 = getelementptr inbounds nuw i8, ptr %tree.data, i64 %1, !dbg !3046
  %5 = load i8, ptr %4, align 1, !dbg !3046
  switch i8 %5, label %if.else2 [
    i8 40, label %if.then
    i8 41, label %if.then1
  ], !dbg !3043

if.then:                                          ; preds = %lookup.next
  %6 = add i64 %3, 1, !dbg !3047
    #dbg_value(i64 %6, !3032, !DIExpression(), !3047)
  br label %if.done, !dbg !3043

if.done:                                          ; preds = %lookup.next11, %if.else2, %if.then1, %if.then
  %7 = phi i64 [ %6, %if.then ], [ %10, %if.then1 ], [ %3, %if.else2 ], [ %k, %lookup.next11 ], !dbg !3037
  %8 = phi i64 [ %2, %if.then ], [ %2, %if.then1 ], [ %2, %if.else2 ], [ %14, %lookup.next11 ], !dbg !3038
  %9 = add nuw nsw i64 %1, 1, !dbg !3048
    #dbg_value(i64 %9, !3035, !DIExpression(), !3049)
    #dbg_value(i64 %tree.len, !3034, !DIExpression(), !3050)
  %exitcond.not = icmp eq i64 %9, %tree.len, !dbg !3042
  br i1 %exitcond.not, label %for.done, label %lookup.next, !dbg !3043

if.then1:                                         ; preds = %lookup.next
  %10 = add i64 %3, -1, !dbg !3051
    #dbg_value(i64 %10, !3032, !DIExpression(), !3051)
  br label %if.done, !dbg !3043

if.else2:                                         ; preds = %lookup.next
    #dbg_value(i64 %3, !3032, !DIExpression(), !3052)
    #dbg_value(i64 %k, !3031, !DIExpression(), !3053)
  %11 = icmp eq i64 %3, %k, !dbg !3054
  br i1 %11, label %lookup.next11, label %if.done, !dbg !3043

lookup.next11:                                    ; preds = %if.else2
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3055)
    #dbg_value(i64 %1, !3035, !DIExpression(), !3056)
  %12 = add i8 %5, -48, !dbg !3057
  %13 = zext i8 %12 to i64, !dbg !3058
  %14 = add i64 %2, %13, !dbg !3059
    #dbg_value(i64 %14, !3033, !DIExpression(), !3059)
  br label %if.done, !dbg !3043

for.done:                                         ; preds = %if.done, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %8, %if.done ], !dbg !3038
    #dbg_value(i64 %.lcssa, !3033, !DIExpression(), !3060)
  ret i64 %.lcssa, !dbg !3061
}
