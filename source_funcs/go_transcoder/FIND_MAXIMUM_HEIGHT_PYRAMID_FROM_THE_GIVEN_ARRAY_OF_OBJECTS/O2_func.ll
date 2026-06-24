define i64 @f_gold(ptr nocapture %boxes.data, i64 %boxes.len, i64 %boxes.cap, i64 %n) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %boxes.data, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4013)
    #dbg_value(i64 %boxes.len, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4013)
    #dbg_value(i64 %boxes.cap, !4005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4013)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4013)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4014)
    #dbg_value(ptr %boxes.data, !4015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4020)
    #dbg_value(i64 %boxes.len, !4015, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4020)
    #dbg_value(i64 %boxes.cap, !4015, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4020)
    #dbg_value({ ptr, i64, i64 } poison, !4015, !DIExpression(), !4022)
    #dbg_value(ptr %boxes.data, !4023, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4027)
    #dbg_value(i64 %boxes.len, !4023, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4027)
    #dbg_value(i64 %boxes.cap, !4023, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4027)
    #dbg_value({ ptr, i64, i64 } poison, !4023, !DIExpression(), !4029)
    #dbg_value(i64 %boxes.len, !4026, !DIExpression(), !4030)
    #dbg_value(i64 %boxes.len, !3804, !DIExpression(), !4031)
  %n.fr = freeze i64 %n, !dbg !4033
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %boxes.len, i1 false), !dbg !4031
  %1 = sub nuw nsw i64 64, %0, !dbg !4031
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %boxes.data, i64 %boxes.len, i64 0, i64 %boxes.len, i64 %1), !dbg !4034
    #dbg_value(i64 1, !4007, !DIExpression(), !4035)
  %2 = icmp eq i64 %boxes.len, 0, !dbg !4036
  br i1 %2, label %lookup.throw, label %lookup.next, !dbg !4036

lookup.next:                                      ; preds = %entry
    #dbg_value(i64 poison, !4008, !DIExpression(), !4037)
    #dbg_value(i64 1, !4009, !DIExpression(), !4038)
    #dbg_value(i64 0, !4010, !DIExpression(), !4039)
    #dbg_value(i64 0, !4011, !DIExpression(), !4040)
    #dbg_value(i64 1, !4012, !DIExpression(), !4041)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4042)
  %3 = icmp sgt i64 %n.fr, 1, !dbg !4043
  br i1 %3, label %for.body.preheader, label %for.done, !dbg !4044

for.body.preheader:                               ; preds = %lookup.next
  %4 = load i64, ptr %boxes.data, align 8, !dbg !4036
    #dbg_value(i64 %4, !4008, !DIExpression(), !4037)
  %5 = add i64 %boxes.len, -1, !dbg !4033
  %6 = add nsw i64 %n.fr, -2, !dbg !4033
  %.not.not = icmp ugt i64 %5, %6, !dbg !4033
  br i1 %.not.not, label %for.body, label %lookup.throw3, !dbg !4033

for.body:                                         ; preds = %for.body.preheader, %if.done
  %7 = phi i64 [ %25, %if.done ], [ 1, %for.body.preheader ]
  %8 = phi i64 [ %24, %if.done ], [ 0, %for.body.preheader ]
  %9 = phi i64 [ %23, %if.done ], [ 0, %for.body.preheader ]
  %10 = phi i64 [ %22, %if.done ], [ 1, %for.body.preheader ]
  %11 = phi i64 [ %21, %if.done ], [ %4, %for.body.preheader ]
  %12 = phi i64 [ %20, %if.done ], [ 1, %for.body.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4045)
    #dbg_value(i64 %7, !4012, !DIExpression(), !4046)
  %13 = getelementptr inbounds nuw i64, ptr %boxes.data, i64 %7, !dbg !4033
  %14 = load i64, ptr %13, align 8, !dbg !4033
  %15 = add i64 %14, %8, !dbg !4047
    #dbg_value(i64 %15, !4011, !DIExpression(), !4047)
  %16 = add i64 %9, 1, !dbg !4048
    #dbg_value(i64 %16, !4010, !DIExpression(), !4048)
    #dbg_value(i64 %11, !4008, !DIExpression(), !4049)
  %17 = icmp sgt i64 %15, %11, !dbg !4050
    #dbg_value(i64 %10, !4009, !DIExpression(), !4051)
  %18 = icmp sgt i64 %16, %10
  %or.cond = select i1 %17, i1 %18, i1 false, !dbg !4044
  br i1 %or.cond, label %if.then, label %if.done, !dbg !4044

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %15, !4008, !DIExpression(), !4052)
    #dbg_value(i64 %16, !4009, !DIExpression(), !4053)
    #dbg_value(i64 0, !4010, !DIExpression(), !4054)
    #dbg_value(i64 0, !4011, !DIExpression(), !4055)
  %19 = add i64 %12, 1, !dbg !4056
    #dbg_value(i64 %19, !4007, !DIExpression(), !4056)
  br label %if.done, !dbg !4044

if.done:                                          ; preds = %if.then, %for.body
  %20 = phi i64 [ %12, %for.body ], [ %19, %if.then ], !dbg !4035
  %21 = phi i64 [ %11, %for.body ], [ %15, %if.then ], !dbg !4037
  %22 = phi i64 [ %10, %for.body ], [ %16, %if.then ], !dbg !4038
  %23 = phi i64 [ %16, %for.body ], [ 0, %if.then ], !dbg !4039
  %24 = phi i64 [ %15, %for.body ], [ 0, %if.then ], !dbg !4040
  %25 = add nuw nsw i64 %7, 1, !dbg !4057
    #dbg_value(i64 %25, !4012, !DIExpression(), !4058)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4042)
  %exitcond.not = icmp eq i64 %25, %n.fr, !dbg !4043
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4044

for.done:                                         ; preds = %if.done, %lookup.next
  %.lcssa = phi i64 [ 1, %lookup.next ], [ %20, %if.done ], !dbg !4035
    #dbg_value(i64 %.lcssa, !4007, !DIExpression(), !4059)
  ret i64 %.lcssa, !dbg !4060

lookup.throw:                                     ; preds = %entry
  tail call fastcc void @runtime.lookupPanic(), !dbg !4036
  unreachable, !dbg !4036

lookup.throw3:                                    ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !4033
  unreachable, !dbg !4033
}
