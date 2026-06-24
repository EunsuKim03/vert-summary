define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %arr.data, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4010)
    #dbg_value(i64 %arr.len, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4010)
    #dbg_value(i64 %arr.cap, !4005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4010)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4010)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4011)
    #dbg_value(ptr %arr.data, !4012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4017)
    #dbg_value(i64 %arr.len, !4012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4017)
    #dbg_value(i64 %arr.cap, !4012, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4017)
    #dbg_value({ ptr, i64, i64 } poison, !4012, !DIExpression(), !4019)
    #dbg_value(ptr %arr.data, !4020, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4024)
    #dbg_value(i64 %arr.len, !4020, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4024)
    #dbg_value(i64 %arr.cap, !4020, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4024)
    #dbg_value({ ptr, i64, i64 } poison, !4020, !DIExpression(), !4026)
    #dbg_value(i64 %arr.len, !4023, !DIExpression(), !4027)
    #dbg_value({ ptr, i64, i64 } poison, !4020, !DIExpression(), !4028)
    #dbg_value(i64 %arr.len, !4023, !DIExpression(), !4029)
    #dbg_value(i64 %arr.len, !4023, !DIExpression(), !4030)
    #dbg_value(i64 %arr.len, !3804, !DIExpression(), !4031)
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4031
  %1 = sub nuw nsw i64 64, %0, !dbg !4031
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4033
    #dbg_value(i64 0, !4007, !DIExpression(), !4034)
    #dbg_value(i64 0, !4008, !DIExpression(), !4035)
    #dbg_value(i64 0, !4009, !DIExpression(), !4036)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4037)
  %2 = icmp sgt i64 %n, 0, !dbg !4038
  br i1 %2, label %for.body, label %for.done, !dbg !4039

for.body:                                         ; preds = %entry, %if.done
  %3 = phi i64 [ %13, %if.done ], [ 0, %entry ]
  %4 = phi i64 [ %12, %if.done ], [ 0, %entry ]
  %5 = phi i64 [ %11, %if.done ], [ 0, %entry ]
    #dbg_value(i64 %3, !4009, !DIExpression(), !4040)
    #dbg_value(i64 %3, !4009, !DIExpression(), !4041)
  %6 = and i64 %3, 1, !dbg !4042
  %.not = icmp eq i64 %6, 0, !dbg !4043
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4044)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4045)
    #dbg_value(i64 %3, !4009, !DIExpression(), !4046)
    #dbg_value(i64 %3, !4009, !DIExpression(), !4047)
  %.not1 = icmp ult i64 %3, %arr.len, !dbg !4039
  br i1 %.not, label %if.else, label %if.then, !dbg !4039

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %5, !4007, !DIExpression(), !4048)
  br i1 %.not1, label %lookup.next, label %lookup.throw, !dbg !4049

lookup.next:                                      ; preds = %if.then
  %7 = mul i64 %5, 10, !dbg !4050
  %8 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %3, !dbg !4049
  %9 = load i64, ptr %8, align 8, !dbg !4049
  %10 = add i64 %9, %7, !dbg !4051
    #dbg_value(i64 %10, !4007, !DIExpression(), !4052)
  br label %if.done, !dbg !4039

if.done:                                          ; preds = %lookup.next4, %lookup.next
  %11 = phi i64 [ %10, %lookup.next ], [ %5, %lookup.next4 ], !dbg !4034
  %12 = phi i64 [ %4, %lookup.next ], [ %17, %lookup.next4 ], !dbg !4035
  %13 = add nuw nsw i64 %3, 1, !dbg !4053
    #dbg_value(i64 %13, !4009, !DIExpression(), !4040)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4037)
  %exitcond.not = icmp eq i64 %13, %n, !dbg !4038
  br i1 %exitcond.not, label %for.done.loopexit, label %for.body, !dbg !4039

if.else:                                          ; preds = %for.body
    #dbg_value(i64 %4, !4008, !DIExpression(), !4054)
  br i1 %.not1, label %lookup.next4, label %lookup.throw3, !dbg !4055

lookup.next4:                                     ; preds = %if.else
  %14 = mul i64 %4, 10, !dbg !4056
  %15 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %3, !dbg !4055
  %16 = load i64, ptr %15, align 8, !dbg !4055
  %17 = add i64 %16, %14, !dbg !4057
    #dbg_value(i64 %17, !4008, !DIExpression(), !4058)
  br label %if.done, !dbg !4039

for.done.loopexit:                                ; preds = %if.done
  %18 = add i64 %12, %11, !dbg !4059
  br label %for.done, !dbg !4059

for.done:                                         ; preds = %for.done.loopexit, %entry
  %19 = phi i64 [ 0, %entry ], [ %18, %for.done.loopexit ], !dbg !4059
    #dbg_value(i64 poison, !4007, !DIExpression(), !4060)
    #dbg_value(i64 poison, !4008, !DIExpression(), !4061)
  ret i64 %19, !dbg !4062

lookup.throw:                                     ; preds = %if.then
  tail call fastcc void @runtime.lookupPanic(), !dbg !4049
  unreachable, !dbg !4049

lookup.throw3:                                    ; preds = %if.else
  tail call fastcc void @runtime.lookupPanic(), !dbg !4055
  unreachable, !dbg !4055
}
