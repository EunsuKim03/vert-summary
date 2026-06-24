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
    #dbg_value(i64 %a.len, !3804, !DIExpression(), !4028)
  %n.fr = freeze i64 %n, !dbg !4030
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %a.len, i1 false), !dbg !4028
  %1 = sub nuw nsw i64 64, %0, !dbg !4028
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %a.data, i64 %a.len, i64 0, i64 %a.len, i64 %1), !dbg !4031
    #dbg_value(i64 1, !4007, !DIExpression(), !4032)
    #dbg_value(i64 0, !4008, !DIExpression(), !4033)
    #dbg_value(i64 1, !4009, !DIExpression(), !4034)
  %2 = icmp sgt i64 %n.fr, 1, !dbg !4035
  br i1 %2, label %for.body.preheader, label %for.done, !dbg !4036

for.body.preheader:                               ; preds = %entry
  %3 = call i64 @llvm.usub.sat.i64(i64 %a.len, i64 1), !dbg !4030
  %4 = add nsw i64 %n.fr, -2, !dbg !4030
  %.not.not = icmp ugt i64 %3, %4, !dbg !4030
  br i1 %.not.not, label %for.body.preheader.split, label %lookup.throw, !dbg !4030

for.body.preheader.split:                         ; preds = %for.body.preheader
  %invariant.gep = getelementptr i8, ptr %a.data, i64 -8, !dbg !4030
  br label %lookup.next4, !dbg !4030

lookup.next4:                                     ; preds = %if.done, %for.body.preheader.split
  %5 = phi i64 [ %15, %if.done ], [ 1, %for.body.preheader.split ]
  %6 = phi i64 [ %14, %if.done ], [ 0, %for.body.preheader.split ]
  %7 = phi i64 [ %13, %if.done ], [ 1, %for.body.preheader.split ]
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4037)
    #dbg_value(i64 %5, !4009, !DIExpression(), !4038)
  %8 = getelementptr inbounds nuw i64, ptr %a.data, i64 %5, !dbg !4030
  %9 = load i64, ptr %8, align 8, !dbg !4030
  %gep = getelementptr i64, ptr %invariant.gep, i64 %5, !dbg !4039
  %10 = load i64, ptr %gep, align 8, !dbg !4039
  %11 = icmp eq i64 %9, %10, !dbg !4040
  br i1 %11, label %if.then, label %if.else, !dbg !4036

if.then:                                          ; preds = %lookup.next4
  %12 = add i64 %7, 1, !dbg !4041
    #dbg_value(i64 %12, !4007, !DIExpression(), !4041)
  br label %if.done, !dbg !4036

if.done:                                          ; preds = %if.else, %if.then
  %13 = phi i64 [ %12, %if.then ], [ 1, %if.else ], !dbg !4032
  %14 = phi i64 [ %6, %if.then ], [ %19, %if.else ], !dbg !4033
  %15 = add nuw nsw i64 %5, 1, !dbg !4042
    #dbg_value(i64 %15, !4009, !DIExpression(), !4043)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4044)
  %exitcond.not = icmp eq i64 %15, %n.fr, !dbg !4035
  br i1 %exitcond.not, label %for.done, label %lookup.next4, !dbg !4036

if.else:                                          ; preds = %lookup.next4
    #dbg_value(i64 %6, !4008, !DIExpression(), !4045)
    #dbg_value(i64 %7, !4007, !DIExpression(), !4046)
  %16 = add i64 %7, -1, !dbg !4047
  %17 = mul i64 %16, %7, !dbg !4048
  %18 = sdiv i64 %17, 2, !dbg !4049
  %19 = add i64 %18, %6, !dbg !4050
    #dbg_value(i64 %19, !4008, !DIExpression(), !4051)
    #dbg_value(i64 1, !4007, !DIExpression(), !4052)
  br label %if.done, !dbg !4036

for.done:                                         ; preds = %if.done, %entry
  %.lcssa7 = phi i64 [ 1, %entry ], [ %13, %if.done ], !dbg !4032
  %.lcssa = phi i64 [ 0, %entry ], [ %14, %if.done ], !dbg !4033
    #dbg_value(i64 %.lcssa, !4008, !DIExpression(), !4053)
    #dbg_value(i64 %.lcssa7, !4007, !DIExpression(), !4054)
  %20 = add i64 %.lcssa7, -1, !dbg !4055
  %21 = mul i64 %20, %.lcssa7, !dbg !4056
  %22 = sdiv i64 %21, 2, !dbg !4057
  %23 = add i64 %22, %.lcssa, !dbg !4058
    #dbg_value(i64 %23, !4008, !DIExpression(), !4059)
  ret i64 %23, !dbg !4060

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !4030
  unreachable, !dbg !4030
}
