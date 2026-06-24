define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3029 {
entry:
    #dbg_value(ptr %arr.data, !3038, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3044)
    #dbg_value(i64 %arr.len, !3038, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3044)
    #dbg_value(i64 %arr.cap, !3038, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3044)
    #dbg_value(i64 %n, !3039, !DIExpression(), !3044)
    #dbg_value(i64 0, !3040, !DIExpression(), !3045)
    #dbg_value(i64 0, !3041, !DIExpression(), !3046)
    #dbg_value(i64 0, !3042, !DIExpression(), !3047)
    #dbg_value(i64 0, !3043, !DIExpression(), !3048)
  %0 = icmp sgt i64 %n, 0, !dbg !3049
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3050

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3051
  %.not.not = icmp ugt i64 %arr.len, %1, !dbg !3051
  br i1 %.not.not, label %for.body, label %lookup.throw, !dbg !3051

for.body:                                         ; preds = %for.body.preheader, %for.body
  %2 = phi i64 [ %13, %for.body ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %8, %for.body ], [ 0, %for.body.preheader ]
  %4 = phi i64 [ %12, %for.body ], [ 0, %for.body.preheader ]
  %5 = phi i64 [ %10, %for.body ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %2, !3043, !DIExpression(), !3052)
    #dbg_value({ ptr, i64, i64 } poison, !3038, !DIExpression(), !3053)
    #dbg_value(i64 %2, !3043, !DIExpression(), !3054)
  %6 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2, !dbg !3051
  %7 = load i64, ptr %6, align 8, !dbg !3051
  %8 = add i64 %7, %3, !dbg !3055
    #dbg_value(i64 %8, !3042, !DIExpression(), !3055)
    #dbg_value({ ptr, i64, i64 } poison, !3038, !DIExpression(), !3056)
    #dbg_value(i64 %2, !3043, !DIExpression(), !3057)
  %9 = icmp sgt i64 %7, -1, !dbg !3058
  %.lobit = lshr i64 %7, 63, !dbg !3050
  %10 = add i64 %.lobit, %5, !dbg !3050
  %11 = zext i1 %9 to i64, !dbg !3050
  %12 = add i64 %4, %11, !dbg !3050
  %13 = add nuw nsw i64 %2, 1, !dbg !3059
    #dbg_value(i64 %13, !3043, !DIExpression(), !3052)
    #dbg_value(i64 %n, !3039, !DIExpression(), !3060)
  %exitcond.not = icmp eq i64 %13, %n, !dbg !3049
  br i1 %exitcond.not, label %for.done.loopexit, label %for.body, !dbg !3050

for.done.loopexit:                                ; preds = %for.body
  %14 = sub i64 %10, %12, !dbg !3061
  %15 = sitofp i64 %14 to double, !dbg !3062
  br label %for.done, !dbg !3061

for.done:                                         ; preds = %for.done.loopexit, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %8, %for.done.loopexit ], !dbg !3047
  %16 = phi double [ 0.000000e+00, %entry ], [ %15, %for.done.loopexit ], !dbg !3061
    #dbg_value(i64 %.lcssa, !3042, !DIExpression(), !3063)
    #dbg_value(i64 poison, !3040, !DIExpression(), !3064)
    #dbg_value(i64 poison, !3041, !DIExpression(), !3065)
    #dbg_value(double %16, !3066, !DIExpression(), !3072)
    #dbg_value(double %16, !3066, !DIExpression(), !3074)
  %17 = tail call double @llvm.fabs.f64(double %16), !dbg !3075
  %belowmax = fcmp ole double %17, 0x43DFFFFFFFFFFFFE, !dbg !3076
  %normal = fptosi double %17 to i64, !dbg !3076
  %18 = select i1 %belowmax, i64 %normal, i64 9223372036854775807, !dbg !3076
  %19 = icmp eq i64 %18, 0, !dbg !3077
  br i1 %19, label %divbyzero.throw, label %divbyzero.next, !dbg !3077

divbyzero.next:                                   ; preds = %for.done
  %20 = icmp eq i64 %18, -1, !dbg !3077
  %21 = icmp eq i64 %.lcssa, -9223372036854775808, !dbg !3077
  %22 = and i1 %21, %20, !dbg !3077
  %23 = select i1 %22, i64 1, i64 %18, !dbg !3077
  %24 = sdiv i64 %.lcssa, %23, !dbg !3077
  ret i64 %24, !dbg !3078

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3051
  unreachable, !dbg !3051

divbyzero.throw:                                  ; preds = %for.done
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3077
  unreachable, !dbg !3077
}
