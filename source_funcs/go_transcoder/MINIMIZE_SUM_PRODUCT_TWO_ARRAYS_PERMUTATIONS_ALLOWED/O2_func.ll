define i64 @f_gold(ptr nocapture %A.data, i64 %A.len, i64 %A.cap, ptr nocapture %B.data, i64 %B.len, i64 %B.cap, i64 %n) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %A.data, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4010)
    #dbg_value(i64 %A.len, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4010)
    #dbg_value(i64 %A.cap, !4005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4010)
    #dbg_value(ptr %B.data, !4006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4010)
    #dbg_value(i64 %B.len, !4006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4010)
    #dbg_value(i64 %B.cap, !4006, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4010)
    #dbg_value(i64 %n, !4007, !DIExpression(), !4010)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4011)
    #dbg_value(ptr %A.data, !4012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4017)
    #dbg_value(i64 %A.len, !4012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4017)
    #dbg_value(i64 %A.cap, !4012, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4017)
    #dbg_value({ ptr, i64, i64 } poison, !4012, !DIExpression(), !4019)
    #dbg_value(ptr %A.data, !4020, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4024)
    #dbg_value(i64 %A.len, !4020, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4024)
    #dbg_value(i64 %A.cap, !4020, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4024)
    #dbg_value({ ptr, i64, i64 } poison, !4020, !DIExpression(), !4026)
    #dbg_value(i64 %A.len, !4023, !DIExpression(), !4027)
    #dbg_value(i64 %A.len, !3804, !DIExpression(), !4028)
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %A.len, i1 false), !dbg !4028
  %1 = sub nuw nsw i64 64, %0, !dbg !4028
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %A.data, i64 %A.len, i64 0, i64 %A.len, i64 %1), !dbg !4030
    #dbg_value({ ptr, i64, i64 } poison, !4006, !DIExpression(), !4031)
    #dbg_value(ptr %B.data, !4012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4032)
    #dbg_value(i64 %B.len, !4012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4032)
    #dbg_value(i64 %B.cap, !4012, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4032)
    #dbg_value({ ptr, i64, i64 } poison, !4012, !DIExpression(), !4034)
    #dbg_value(ptr %B.data, !4020, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4035)
    #dbg_value(i64 %B.len, !4020, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4035)
    #dbg_value(i64 %B.cap, !4020, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4035)
    #dbg_value({ ptr, i64, i64 } poison, !4020, !DIExpression(), !4037)
    #dbg_value(i64 %B.len, !4023, !DIExpression(), !4038)
    #dbg_value(i64 %B.len, !3804, !DIExpression(), !4039)
  %2 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %B.len, i1 false), !dbg !4039
  %3 = sub nuw nsw i64 64, %2, !dbg !4039
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %B.data, i64 %B.len, i64 0, i64 %B.len, i64 %3), !dbg !4041
    #dbg_value(i64 0, !4008, !DIExpression(), !4042)
    #dbg_value(i64 0, !4009, !DIExpression(), !4043)
  %4 = icmp sgt i64 %n, 0, !dbg !4044
  br i1 %4, label %for.body, label %for.done, !dbg !4045

for.body:                                         ; preds = %entry, %lookup.next4
  %5 = phi i64 [ %15, %lookup.next4 ], [ 0, %entry ]
  %6 = phi i64 [ %14, %lookup.next4 ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4046)
    #dbg_value(i64 %5, !4009, !DIExpression(), !4047)
  %exitcond.not = icmp eq i64 %5, %A.len, !dbg !4048
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !4048

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !4006, !DIExpression(), !4049)
    #dbg_value(i64 %n, !4007, !DIExpression(), !4050)
    #dbg_value(i64 %5, !4009, !DIExpression(), !4051)
  %7 = xor i64 %5, -1, !dbg !4052
  %8 = add nsw i64 %n, %7, !dbg !4052
  %.not2 = icmp ult i64 %8, %B.len, !dbg !4053
  br i1 %.not2, label %lookup.next4, label %lookup.throw3, !dbg !4053

lookup.next4:                                     ; preds = %lookup.next
  %9 = getelementptr inbounds nuw i64, ptr %A.data, i64 %5, !dbg !4048
  %10 = load i64, ptr %9, align 8, !dbg !4048
  %11 = getelementptr inbounds i64, ptr %B.data, i64 %8, !dbg !4053
  %12 = load i64, ptr %11, align 8, !dbg !4053
  %13 = mul i64 %12, %10, !dbg !4054
  %14 = add i64 %13, %6, !dbg !4055
    #dbg_value(i64 %14, !4008, !DIExpression(), !4055)
  %15 = add nuw nsw i64 %5, 1, !dbg !4056
    #dbg_value(i64 %15, !4009, !DIExpression(), !4057)
    #dbg_value(i64 %n, !4007, !DIExpression(), !4058)
  %exitcond8.not = icmp eq i64 %15, %n, !dbg !4044
  br i1 %exitcond8.not, label %for.done, label %for.body, !dbg !4045

for.done:                                         ; preds = %lookup.next4, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %14, %lookup.next4 ], !dbg !4042
    #dbg_value(i64 %.lcssa, !4008, !DIExpression(), !4059)
  ret i64 %.lcssa, !dbg !4060

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !4048
  unreachable, !dbg !4048

lookup.throw3:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !4053
  unreachable, !dbg !4053
}
