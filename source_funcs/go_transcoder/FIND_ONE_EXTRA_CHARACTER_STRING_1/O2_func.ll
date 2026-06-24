define i8 @f_gold(ptr nocapture readonly %strA.data, i64 %strA.len, i64 %strA.cap, ptr nocapture readonly %strB.data, i64 %strB.len, i64 %strB.cap) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(ptr %strA.data, !3030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3034)
    #dbg_value(i64 %strA.len, !3030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3034)
    #dbg_value(i64 %strA.cap, !3030, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3034)
    #dbg_value(ptr %strB.data, !3031, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3034)
    #dbg_value(i64 %strB.len, !3031, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3034)
    #dbg_value(i64 %strB.cap, !3031, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3034)
    #dbg_value(i64 0, !3032, !DIExpression(), !3035)
    #dbg_value(i64 0, !3033, !DIExpression(), !3036)
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3037)
  %0 = icmp sgt i64 %strA.len, 0, !dbg !3038
  br i1 %0, label %lookup.next, label %for.loop1.preheader, !dbg !3039

for.loop1.preheader:                              ; preds = %lookup.next, %entry
  %.lcssa6 = phi i8 [ 0, %entry ], [ %6, %lookup.next ], !dbg !3035
    #dbg_value(i64 0, !3033, !DIExpression(), !3040)
    #dbg_value({ ptr, i64, i64 } poison, !3031, !DIExpression(), !3041)
  %1 = icmp sgt i64 %strB.len, 0, !dbg !3042
  br i1 %1, label %lookup.next8, label %for.done3, !dbg !3039

lookup.next:                                      ; preds = %entry, %lookup.next
  %2 = phi i64 [ %7, %lookup.next ], [ 0, %entry ]
  %3 = phi i8 [ %6, %lookup.next ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3043)
    #dbg_value(i64 %2, !3033, !DIExpression(), !3044)
  %4 = getelementptr inbounds nuw i8, ptr %strA.data, i64 %2, !dbg !3045
  %5 = load i8, ptr %4, align 1, !dbg !3045
  %6 = xor i8 %5, %3, !dbg !3046
    #dbg_value(i64 undef, !3032, !DIExpression(), !3046)
  %7 = add nuw nsw i64 %2, 1, !dbg !3047
    #dbg_value(i64 %7, !3033, !DIExpression(), !3048)
  %exitcond.not = icmp eq i64 %7, %strA.len, !dbg !3038
  br i1 %exitcond.not, label %for.loop1.preheader, label %lookup.next, !dbg !3039

lookup.next8:                                     ; preds = %for.loop1.preheader, %lookup.next8
  %8 = phi i64 [ %13, %lookup.next8 ], [ 0, %for.loop1.preheader ]
  %9 = phi i8 [ %12, %lookup.next8 ], [ %.lcssa6, %for.loop1.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3031, !DIExpression(), !3049)
    #dbg_value(i64 %8, !3033, !DIExpression(), !3050)
  %10 = getelementptr inbounds nuw i8, ptr %strB.data, i64 %8, !dbg !3051
  %11 = load i8, ptr %10, align 1, !dbg !3051
  %12 = xor i8 %11, %9, !dbg !3052
    #dbg_value(i64 undef, !3032, !DIExpression(), !3052)
  %13 = add nuw nsw i64 %8, 1, !dbg !3053
    #dbg_value(i64 %13, !3033, !DIExpression(), !3040)
  %exitcond11.not = icmp eq i64 %13, %strB.len, !dbg !3042
  br i1 %exitcond11.not, label %for.done3, label %lookup.next8, !dbg !3039

for.done3:                                        ; preds = %lookup.next8, %for.loop1.preheader
  %.lcssa = phi i8 [ %.lcssa6, %for.loop1.preheader ], [ %12, %lookup.next8 ], !dbg !3035
    #dbg_value(i64 poison, !3032, !DIExpression(), !3054)
  ret i8 %.lcssa, !dbg !3055
}
