define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, ptr nocapture %b.data, i64 %b.len, i64 %b.cap, i64 %n) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %a.data, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4010)
    #dbg_value(i64 %a.len, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4010)
    #dbg_value(i64 %a.cap, !4005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4010)
    #dbg_value(ptr %b.data, !4006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4010)
    #dbg_value(i64 %b.len, !4006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4010)
    #dbg_value(i64 %b.cap, !4006, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4010)
    #dbg_value(i64 %n, !4007, !DIExpression(), !4010)
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
  %0 = freeze i64 %b.len, !dbg !4030
  %n.fr = freeze i64 %n, !dbg !4030
  %1 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %a.len, i1 false), !dbg !4028
  %2 = sub nuw nsw i64 64, %1, !dbg !4028
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %a.data, i64 %a.len, i64 0, i64 %a.len, i64 %2), !dbg !4031
    #dbg_value({ ptr, i64, i64 } poison, !4006, !DIExpression(), !4032)
    #dbg_value(ptr %b.data, !4012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4033)
    #dbg_value(i64 %b.len, !4012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4033)
    #dbg_value(i64 %b.cap, !4012, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4033)
    #dbg_value({ ptr, i64, i64 } poison, !4012, !DIExpression(), !4035)
    #dbg_value(ptr %b.data, !4020, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4036)
    #dbg_value(i64 %b.len, !4020, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4036)
    #dbg_value(i64 %b.cap, !4020, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4036)
    #dbg_value({ ptr, i64, i64 } poison, !4020, !DIExpression(), !4038)
    #dbg_value(i64 %b.len, !4023, !DIExpression(), !4039)
    #dbg_value(i64 %b.len, !3804, !DIExpression(), !4040)
  %3 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 false), !dbg !4040
  %4 = sub nuw nsw i64 64, %3, !dbg !4040
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %b.data, i64 %0, i64 0, i64 %0, i64 %4), !dbg !4042
    #dbg_value(i64 0, !4008, !DIExpression(), !4043)
    #dbg_value(i64 0, !4009, !DIExpression(), !4044)
  %5 = icmp sgt i64 %n.fr, 0, !dbg !4045
  br i1 %5, label %for.body.preheader, label %for.done, !dbg !4046

for.body.preheader:                               ; preds = %entry
  %6 = add nsw i64 %n.fr, -1, !dbg !4030
  %umin = call i64 @llvm.umin.i64(i64 %6, i64 %0), !dbg !4030
  %.not.not = icmp ugt i64 %a.len, %umin, !dbg !4030
  br i1 %.not.not, label %for.body.preheader.split, label %lookup.throw, !dbg !4030

for.body.preheader.split:                         ; preds = %for.body.preheader
  %.not.not6 = icmp ugt i64 %0, %6, !dbg !4030
  br i1 %.not.not6, label %for.body, label %lookup.throw3, !dbg !4047

for.body:                                         ; preds = %for.body.preheader.split, %for.body
  %7 = phi i64 [ %18, %for.body ], [ 0, %for.body.preheader.split ]
  %8 = phi i64 [ %17, %for.body ], [ 0, %for.body.preheader.split ]
    #dbg_value(i64 %8, !4008, !DIExpression(), !4048)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4049)
    #dbg_value({ ptr, i64, i64 } poison, !4006, !DIExpression(), !4050)
    #dbg_value(i64 %7, !4009, !DIExpression(), !4051)
  %9 = getelementptr inbounds nuw i64, ptr %a.data, i64 %7, !dbg !4030
  %10 = load i64, ptr %9, align 8, !dbg !4030
  %11 = getelementptr inbounds nuw i64, ptr %b.data, i64 %7, !dbg !4047
  %12 = load i64, ptr %11, align 8, !dbg !4047
  %13 = sub i64 %10, %12, !dbg !4052
  %14 = sitofp i64 %13 to double, !dbg !4053
    #dbg_value(double %14, !4054, !DIExpression(), !4060)
  %15 = tail call double @llvm.fabs.f64(double %14), !dbg !4062
  %belowmax = fcmp ole double %15, 0x43DFFFFFFFFFFFFE, !dbg !4063
  %normal = fptosi double %15 to i64, !dbg !4063
  %16 = select i1 %belowmax, i64 %normal, i64 9223372036854775807, !dbg !4063
  %17 = add i64 %16, %8, !dbg !4064
    #dbg_value(i64 %17, !4008, !DIExpression(), !4065)
  %18 = add nuw nsw i64 %7, 1, !dbg !4066
    #dbg_value(i64 %18, !4009, !DIExpression(), !4067)
    #dbg_value(i64 %n, !4007, !DIExpression(), !4068)
  %exitcond.not = icmp eq i64 %18, %n.fr, !dbg !4045
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4046

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %17, %for.body ], !dbg !4043
    #dbg_value(i64 %.lcssa, !4008, !DIExpression(), !4069)
  ret i64 %.lcssa, !dbg !4070

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !4030
  unreachable, !dbg !4030

lookup.throw3:                                    ; preds = %for.body.preheader.split
  tail call fastcc void @runtime.lookupPanic(), !dbg !4047
  unreachable, !dbg !4047
}
