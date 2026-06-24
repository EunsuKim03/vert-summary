define i64 @f_gold(ptr nocapture readonly %s.data, i64 %s.len, i64 %s.cap) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %s.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %s.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %s.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 0, !3119, !DIExpression(), !3124)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3125)
    #dbg_value(i64 %s.len, !3120, !DIExpression(), !3126)
    #dbg_value(i64 0, !3121, !DIExpression(), !3127)
  %0 = icmp sgt i64 %s.len, 0, !dbg !3128
  br i1 %0, label %for.loop1.preheader, label %for.done3, !dbg !3129

for.loop1.preheader:                              ; preds = %entry, %for.done
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.done ], [ -1, %entry ]
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.done ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.done ], [ 0, %entry ]
  %1 = phi i64 [ %15, %for.done ], [ 0, %entry ]
  %2 = phi i64 [ %spec.select, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %1, !3121, !DIExpression(), !3130)
    #dbg_value(i64 %1, !3122, !DIExpression(), !3131)
    #dbg_value(i64 %s.len, !3120, !DIExpression(), !3132)
  %3 = getelementptr inbounds nuw i8, ptr %s.data, i64 %1
  %smax = call i64 @llvm.smax.i64(i64 %s.len, i64 %indvars.iv10)
  %4 = add nsw i64 %smax, %indvars.iv12
  %umax = call i64 @llvm.umax.i64(i64 %s.len, i64 %1)
  %5 = add i64 %umax, %indvars.iv
  %.not.not = icmp ugt i64 %5, %4, !dbg !3133
  br label %for.body2, !dbg !3133

for.body2:                                        ; preds = %for.loop1.preheader, %lookup.next7
  %6 = phi i64 [ %13, %lookup.next7 ], [ %1, %for.loop1.preheader ]
  %7 = phi i64 [ %spec.select, %lookup.next7 ], [ %2, %for.loop1.preheader ]
    #dbg_value(i64 %6, !3122, !DIExpression(), !3131)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3134)
    #dbg_value(i64 %1, !3121, !DIExpression(), !3135)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3136)
    #dbg_value(i64 %6, !3122, !DIExpression(), !3137)
  br i1 %.not.not, label %lookup.next7, label %lookup.throw6, !dbg !3133

lookup.next7:                                     ; preds = %for.body2
  %8 = load i8, ptr %3, align 1, !dbg !3138
  %9 = getelementptr inbounds nuw i8, ptr %s.data, i64 %6, !dbg !3133
  %10 = load i8, ptr %9, align 1, !dbg !3133
  %11 = icmp eq i8 %8, %10, !dbg !3139
  %12 = zext i1 %11 to i64, !dbg !3129
  %spec.select = add i64 %7, %12, !dbg !3129
  %13 = add nuw nsw i64 %6, 1, !dbg !3140
    #dbg_value(i64 %13, !3122, !DIExpression(), !3131)
    #dbg_value(i64 %s.len, !3120, !DIExpression(), !3132)
  %14 = icmp slt i64 %13, %s.len, !dbg !3141
  br i1 %14, label %for.body2, label %for.done, !dbg !3129

for.done:                                         ; preds = %lookup.next7
  %15 = add nuw nsw i64 %1, 1, !dbg !3142
    #dbg_value(i64 %15, !3121, !DIExpression(), !3130)
    #dbg_value(i64 %s.len, !3120, !DIExpression(), !3143)
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3129
  %indvars.iv.next11 = add nuw i64 %indvars.iv10, 1, !dbg !3129
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, -1, !dbg !3129
  %exitcond.not = icmp eq i64 %15, %s.len, !dbg !3128
  br i1 %exitcond.not, label %for.done3, label %for.loop1.preheader, !dbg !3129

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa7 = phi i64 [ 0, %entry ], [ %spec.select, %for.done ], !dbg !3124
    #dbg_value(i64 %.lcssa7, !3119, !DIExpression(), !3144)
  ret i64 %.lcssa7, !dbg !3145

lookup.throw6:                                    ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3133
  unreachable, !dbg !3133
}
