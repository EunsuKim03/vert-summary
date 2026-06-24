define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1663)
  %_3.i.i.i.i.i.i.i.i.i.i = load i32, ptr %arr, align 8, !alias.scope !1665, !noalias !1666, !noundef !15
  %spec.select.i.i.i = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_4.i.i.i.i.i.i.i.i.i.i = load i32, ptr %spec.select.i.i.i, align 4, !alias.scope !1676, !noalias !1677, !noundef !15
  %maxele = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i.i.i.i.i)
  %_0.i.i.i24 = icmp sgt i32 %n, 0
  %1 = zext i1 %_0.i.i.i24 to i32
  %_0.i.not.i.i36 = icmp slt i32 %maxele, 2
  br i1 %_0.i.not.i.i36, label %bb10, label %bb12.preheader.lr.ph

bb12.preheader.lr.ph:                             ; preds = %start
  %.not = icmp eq i32 %maxele, 2
  %iter.sroa.7.142 = zext i1 %.not to i8
  %_0.i3.i.i37.not = icmp eq i32 %maxele, 2
  %iter.sroa.0.141 = select i1 %_0.i3.i.i37.not, i32 2, i32 3
  br label %bb12.preheader

bb12.preheader:                                   ; preds = %bb12.preheader.lr.ph, %bb15
  %_0.sroa.3.0.i.i46 = phi i32 [ 2, %bb12.preheader.lr.ph ], [ %_0.sroa.3.0.i.i, %bb15 ]
  %iter.sroa.7.145 = phi i8 [ %iter.sroa.7.142, %bb12.preheader.lr.ph ], [ %iter.sroa.7.1, %bb15 ]
  %iter.sroa.0.144 = phi i32 [ %iter.sroa.0.141, %bb12.preheader.lr.ph ], [ %iter.sroa.0.1, %bb15 ]
  %ans.sroa.0.043 = phi i32 [ 0, %bb12.preheader.lr.ph ], [ %x.y.i, %bb15 ]
  br i1 %_0.i.i.i24, label %bb14, label %bb15

bb10:                                             ; preds = %bb15, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %x.y.i, %bb15 ]
  ret i32 %ans.sroa.0.0.lcssa

bb14:                                             ; preds = %bb12.preheader, %bb16
  %spec.select1227 = phi i32 [ %spec.select12, %bb16 ], [ %1, %bb12.preheader ]
  %count.sroa.0.026 = phi i32 [ %spec.select, %bb16 ], [ 0, %bb12.preheader ]
  %iter1.sroa.0.025 = phi i32 [ %spec.select1227, %bb16 ], [ 0, %bb12.preheader ]
  %_27 = zext nneg i32 %iter1.sroa.0.025 to i64
  %_28 = icmp samesign ult i32 %iter1.sroa.0.025, 2
  br i1 %_28, label %bb16, label %panic

bb15:                                             ; preds = %bb16, %bb12.preheader
  %count.sroa.0.0.lcssa = phi i32 [ 0, %bb12.preheader ], [ %spec.select, %bb16 ]
  %x.y.i = tail call noundef i32 @llvm.smax.i32(i32 %ans.sroa.0.043, i32 %count.sroa.0.0.lcssa)
  %_10.i.i = trunc nuw i8 %iter.sroa.7.145 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.144, %maxele
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.144, %maxele
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select14 = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.144, %spec.select14
  %2 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %2, i8 %iter.sroa.7.145, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.144
  br i1 %or.cond, label %bb10, label %bb12.preheader

bb16:                                             ; preds = %bb14
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_27
  %_26 = load i32, ptr %3, align 4, !noundef !15
  %_25 = srem i32 %_26, %_0.sroa.3.0.i.i46
  %_24 = icmp eq i32 %_25, 0
  %4 = zext i1 %_24 to i32
  %spec.select = add i32 %count.sroa.0.026, %4
  %_0.i.i.i = icmp slt i32 %spec.select1227, %n
  %5 = zext i1 %_0.i.i.i to i32
  %spec.select12 = add nuw nsw i32 %spec.select1227, %5
  br i1 %_0.i.i.i, label %bb14, label %bb15

panic:                                            ; preds = %bb14
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_27, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_734579732689645a3c43814221cdc57c) #25
  unreachable
}
