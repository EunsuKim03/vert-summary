define i64 @f_gold(ptr nocapture readonly %arr1.data, i64 %arr1.len, i64 %arr1.cap, ptr nocapture readonly %arr2.data, i64 %arr2.len, i64 %arr2.cap, i64 %m, i64 %n, i64 %x) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr1.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3126)
    #dbg_value(i64 %arr1.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3126)
    #dbg_value(i64 %arr1.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3126)
    #dbg_value(ptr %arr2.data, !3119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3126)
    #dbg_value(i64 %arr2.len, !3119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3126)
    #dbg_value(i64 %arr2.cap, !3119, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3126)
    #dbg_value(i64 %m, !3120, !DIExpression(), !3126)
    #dbg_value(i64 %n, !3121, !DIExpression(), !3126)
    #dbg_value(i64 %x, !3122, !DIExpression(), !3126)
    #dbg_value(i64 0, !3123, !DIExpression(), !3127)
    #dbg_value(i64 0, !3124, !DIExpression(), !3128)
  %n.fr = freeze i64 %n, !dbg !3129
  %0 = icmp sgt i64 %m, 0, !dbg !3130
  br i1 %0, label %for.loop1.preheader.lr.ph, label %for.done3, !dbg !3129

for.loop1.preheader.lr.ph:                        ; preds = %entry
  %1 = icmp sgt i64 %n.fr, 0
  %2 = add i64 %n.fr, -1, !dbg !3129
  br label %for.loop1.preheader, !dbg !3129

for.loop1.preheader:                              ; preds = %for.loop1.preheader.lr.ph, %for.done
  %3 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %15, %for.done ]
  %4 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %.lcssa, %for.done ]
    #dbg_value(i64 %3, !3124, !DIExpression(), !3131)
    #dbg_value(i64 0, !3125, !DIExpression(), !3132)
    #dbg_value(i64 %n, !3121, !DIExpression(), !3133)
  br i1 %1, label %for.body2.lr.ph, label %for.done, !dbg !3129

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %3, %arr1.len
  %5 = getelementptr inbounds nuw i64, ptr %arr1.data, i64 %3
  br i1 %.not, label %for.body2.preheader, label %lookup.throw, !dbg !3134

for.body2.preheader:                              ; preds = %for.body2.lr.ph
  %.not12.not = icmp ugt i64 %arr2.len, %2, !dbg !3135
  br label %for.body2, !dbg !3135

for.body2:                                        ; preds = %for.body2.preheader, %lookup.next7
  %6 = phi i64 [ %14, %lookup.next7 ], [ 0, %for.body2.preheader ]
  %7 = phi i64 [ %spec.select, %lookup.next7 ], [ %4, %for.body2.preheader ]
    #dbg_value(i64 %6, !3125, !DIExpression(), !3132)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3136)
    #dbg_value(i64 %3, !3124, !DIExpression(), !3137)
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3138)
    #dbg_value(i64 %6, !3125, !DIExpression(), !3139)
  br i1 %.not12.not, label %lookup.next7, label %lookup.throw6, !dbg !3135

lookup.next7:                                     ; preds = %for.body2
  %8 = load i64, ptr %5, align 8, !dbg !3134
  %9 = getelementptr inbounds nuw i64, ptr %arr2.data, i64 %6, !dbg !3135
  %10 = load i64, ptr %9, align 8, !dbg !3135
  %11 = add i64 %10, %8, !dbg !3140
    #dbg_value(i64 %x, !3122, !DIExpression(), !3141)
  %12 = icmp eq i64 %11, %x, !dbg !3142
  %13 = zext i1 %12 to i64, !dbg !3129
  %spec.select = add i64 %7, %13, !dbg !3129
  %14 = add nuw nsw i64 %6, 1, !dbg !3143
    #dbg_value(i64 %14, !3125, !DIExpression(), !3132)
    #dbg_value(i64 %n, !3121, !DIExpression(), !3133)
  %exitcond.not = icmp eq i64 %14, %n.fr, !dbg !3144
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3129

for.done:                                         ; preds = %lookup.next7, %for.loop1.preheader
  %.lcssa = phi i64 [ %4, %for.loop1.preheader ], [ %spec.select, %lookup.next7 ], !dbg !3127
  %15 = add nuw nsw i64 %3, 1, !dbg !3145
    #dbg_value(i64 %15, !3124, !DIExpression(), !3131)
    #dbg_value(i64 %m, !3120, !DIExpression(), !3146)
  %exitcond11.not = icmp eq i64 %15, %m, !dbg !3130
  br i1 %exitcond11.not, label %for.done3, label %for.loop1.preheader, !dbg !3129

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa7 = phi i64 [ 0, %entry ], [ %.lcssa, %for.done ], !dbg !3127
    #dbg_value(i64 %.lcssa7, !3123, !DIExpression(), !3147)
  ret i64 %.lcssa7, !dbg !3148

lookup.throw:                                     ; preds = %for.body2.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !3134
  unreachable, !dbg !3134

lookup.throw6:                                    ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3135
  unreachable, !dbg !3135
}
