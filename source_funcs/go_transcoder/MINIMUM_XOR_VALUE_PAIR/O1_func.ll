define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3123)
    #dbg_value(i64 9223372036854775807, !3120, !DIExpression(), !3124)
    #dbg_value(i64 0, !3121, !DIExpression(), !3125)
  %0 = icmp sgt i64 %n, 0, !dbg !3126
  br i1 %0, label %for.loop1.preheader.preheader, label %for.done3, !dbg !3127

for.loop1.preheader.preheader:                    ; preds = %entry
  %1 = add nsw i64 %n, -2, !dbg !3127
  br label %for.loop1.preheader, !dbg !3127

for.loop1.preheader:                              ; preds = %for.loop1.preheader.preheader, %for.done
  %indvars.iv11 = phi i64 [ %1, %for.loop1.preheader.preheader ], [ %indvars.iv.next12, %for.done ]
  %indvars.iv.in = phi i64 [ %arr.len, %for.loop1.preheader.preheader ], [ %indvars.iv, %for.done ]
  %2 = phi i64 [ 0, %for.loop1.preheader.preheader ], [ %14, %for.done ]
  %3 = phi i64 [ 9223372036854775807, %for.loop1.preheader.preheader ], [ %.lcssa, %for.done ]
  %indvars.iv = add i64 %indvars.iv.in, -1, !dbg !3127
    #dbg_value(i64 %2, !3121, !DIExpression(), !3128)
  %4 = add nuw nsw i64 %2, 1, !dbg !3129
  %5 = icmp slt i64 %4, %n, !dbg !3130
  br i1 %5, label %for.body2.lr.ph, label %for.done, !dbg !3127

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %2, %arr.len
  %6 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2
  br i1 %.not, label %for.body2.preheader, label %lookup.throw, !dbg !3131

for.body2.preheader:                              ; preds = %for.body2.lr.ph
  %.not14.not = icmp ugt i64 %indvars.iv, %indvars.iv11, !dbg !3132
  br label %for.body2, !dbg !3132

for.body2:                                        ; preds = %for.body2.preheader, %lookup.next7
  %7 = phi i64 [ %13, %lookup.next7 ], [ %4, %for.body2.preheader ]
  %8 = phi i64 [ %x.y.i, %lookup.next7 ], [ %3, %for.body2.preheader ]
    #dbg_value(i64 %8, !3120, !DIExpression(), !3133)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3134)
    #dbg_value(i64 %2, !3121, !DIExpression(), !3135)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3136)
    #dbg_value(i64 %7, !3122, !DIExpression(), !3137)
  br i1 %.not14.not, label %lookup.next7, label %lookup.throw6, !dbg !3132

lookup.next7:                                     ; preds = %for.body2
  %9 = load i64, ptr %6, align 8, !dbg !3131
  %10 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %7, !dbg !3132
  %11 = load i64, ptr %10, align 8, !dbg !3132
  %12 = xor i64 %11, %9, !dbg !3138
    #dbg_value(i64 %8, !3139, !DIExpression(), !3145)
    #dbg_value(i64 %12, !3144, !DIExpression(), !3147)
  %x.y.i = call i64 @llvm.smin.i64(i64 %8, i64 %12), !dbg !3148
    #dbg_value(i64 %x.y.i, !3120, !DIExpression(), !3149)
    #dbg_value(i64 %7, !3122, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3150)
  %13 = add nuw nsw i64 %7, 1, !dbg !3129
    #dbg_value(i64 %13, !3122, !DIExpression(), !3151)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3152)
  %exitcond.not = icmp eq i64 %13, %n, !dbg !3130
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3127

for.done:                                         ; preds = %lookup.next7, %for.loop1.preheader
  %.lcssa = phi i64 [ %3, %for.loop1.preheader ], [ %x.y.i, %lookup.next7 ], !dbg !3124
  %14 = add nuw nsw i64 %2, 1, !dbg !3153
    #dbg_value(i64 %14, !3121, !DIExpression(), !3128)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3154)
  %indvars.iv.next12 = add i64 %indvars.iv11, -1, !dbg !3127
  %exitcond13.not = icmp eq i64 %14, %n, !dbg !3126
  br i1 %exitcond13.not, label %for.done3, label %for.loop1.preheader, !dbg !3127

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa7 = phi i64 [ 9223372036854775807, %entry ], [ %.lcssa, %for.done ], !dbg !3124
    #dbg_value(i64 %.lcssa7, !3120, !DIExpression(), !3155)
  ret i64 %.lcssa7, !dbg !3156

lookup.throw:                                     ; preds = %for.body2.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !3131
  unreachable, !dbg !3131

lookup.throw6:                                    ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3132
  unreachable, !dbg !3132
}
