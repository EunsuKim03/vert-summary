define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, i64 %n) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %a.data, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4010)
    #dbg_value(i64 %a.len, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4010)
    #dbg_value(i64 %a.cap, !4005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4010)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4010)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4011)
    #dbg_value(ptr %a.data, !4012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4017)
    #dbg_value(i64 %a.len, !4012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4017)
    #dbg_value(i64 %a.cap, !4012, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4017)
    #dbg_value({ ptr, i64, i64 } poison, !4012, !DIExpression(), !4019)
    #dbg_value(ptr %a.data, !4020, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4024)
    #dbg_value(i64 %a.len, !4020, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4024)
    #dbg_value(i64 %a.cap, !4020, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4024)
    #dbg_value({ ptr, i64, i64 } poison, !4020, !DIExpression(), !4026)
    #dbg_value(i64 %a.len, !4023, !DIExpression(), !4027)
    #dbg_value({ ptr, i64, i64 } poison, !4020, !DIExpression(), !4028)
    #dbg_value(i64 %a.len, !4023, !DIExpression(), !4029)
    #dbg_value(i64 %a.len, !4023, !DIExpression(), !4030)
    #dbg_value(i64 %a.len, !3804, !DIExpression(), !4031)
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %a.len, i1 false), !dbg !4031
  %1 = sub nuw nsw i64 64, %0, !dbg !4031
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %a.data, i64 %a.len, i64 0, i64 %a.len, i64 %1), !dbg !4033
    #dbg_value(i64 0, !4007, !DIExpression(), !4034)
    #dbg_value(i64 0, !4008, !DIExpression(), !4035)
    #dbg_value(i64 0, !4009, !DIExpression(), !4036)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4037)
  %2 = icmp sgt i64 %n, 0, !dbg !4038
  br i1 %2, label %for.body, label %for.done, !dbg !4039

for.body:                                         ; preds = %entry, %if.done
  %3 = phi i64 [ %14, %if.done ], [ 0, %entry ]
  %4 = phi i64 [ %13, %if.done ], [ 0, %entry ]
  %5 = phi i64 [ %12, %if.done ], [ 0, %entry ]
    #dbg_value(i64 %3, !4009, !DIExpression(), !4040)
    #dbg_value(i64 %3, !4009, !DIExpression(), !4041)
  %6 = and i64 %3, 1, !dbg !4042
  %7 = icmp eq i64 %6, 0, !dbg !4042
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4043)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4044)
    #dbg_value(i64 %3, !4009, !DIExpression(), !4045)
    #dbg_value(i64 %3, !4009, !DIExpression(), !4046)
  %.not1 = icmp ult i64 %3, %a.len, !dbg !4039
  br i1 %7, label %if.then, label %if.else, !dbg !4039

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %5, !4007, !DIExpression(), !4047)
  br i1 %.not1, label %lookup.next, label %lookup.throw, !dbg !4048

lookup.next:                                      ; preds = %if.then
  %8 = mul i64 %5, 10, !dbg !4049
  %9 = getelementptr inbounds nuw i64, ptr %a.data, i64 %3, !dbg !4048
  %10 = load i64, ptr %9, align 8, !dbg !4048
  %11 = add i64 %10, %8, !dbg !4050
    #dbg_value(i64 %11, !4007, !DIExpression(), !4051)
  br label %if.done, !dbg !4039

if.done:                                          ; preds = %lookup.next4, %lookup.next
  %12 = phi i64 [ %11, %lookup.next ], [ %5, %lookup.next4 ], !dbg !4034
  %13 = phi i64 [ %4, %lookup.next ], [ %18, %lookup.next4 ], !dbg !4035
  %14 = add nuw nsw i64 %3, 1, !dbg !4052
    #dbg_value(i64 %14, !4009, !DIExpression(), !4040)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4037)
  %exitcond.not = icmp eq i64 %14, %n, !dbg !4038
  br i1 %exitcond.not, label %for.done.loopexit, label %for.body, !dbg !4039

if.else:                                          ; preds = %for.body
    #dbg_value(i64 %4, !4008, !DIExpression(), !4053)
  br i1 %.not1, label %lookup.next4, label %lookup.throw3, !dbg !4054

lookup.next4:                                     ; preds = %if.else
  %15 = mul i64 %4, 10, !dbg !4055
  %16 = getelementptr inbounds nuw i64, ptr %a.data, i64 %3, !dbg !4054
  %17 = load i64, ptr %16, align 8, !dbg !4054
  %18 = add i64 %17, %15, !dbg !4056
    #dbg_value(i64 %18, !4008, !DIExpression(), !4057)
  br label %if.done, !dbg !4039

for.done.loopexit:                                ; preds = %if.done
  %19 = add i64 %13, %12, !dbg !4058
  br label %for.done, !dbg !4058

for.done:                                         ; preds = %for.done.loopexit, %entry
  %20 = phi i64 [ 0, %entry ], [ %19, %for.done.loopexit ], !dbg !4058
    #dbg_value(i64 poison, !4008, !DIExpression(), !4059)
    #dbg_value(i64 poison, !4007, !DIExpression(), !4060)
  ret i64 %20, !dbg !4061

lookup.throw:                                     ; preds = %if.then
  tail call fastcc void @runtime.lookupPanic(), !dbg !4048
  unreachable, !dbg !4048

lookup.throw3:                                    ; preds = %if.else
  tail call fastcc void @runtime.lookupPanic(), !dbg !4054
  unreachable, !dbg !4054
}
