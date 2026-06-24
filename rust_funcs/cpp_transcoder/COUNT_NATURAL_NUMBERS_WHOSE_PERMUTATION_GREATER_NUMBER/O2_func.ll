define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %stack = alloca [32 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %stack, i64 16
  %1 = getelementptr inbounds nuw i8, ptr %stack, i64 24
  %2 = getelementptr inbounds nuw i8, ptr %stack, i64 8
  br label %bb2.i

bb2.i:                                            ; preds = %start, %"_ZN4core3ptr71drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$i32$GT$$GT$17he1f978817ab19badE.exit20"
  %result.sroa.0.081 = phi i32 [ 0, %start ], [ %result.sroa.0.2.lcssa119, %"_ZN4core3ptr71drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$i32$GT$$GT$17he1f978817ab19badE.exit20" ]
  %iter.sroa.0.080 = phi i32 [ 1, %start ], [ %spec.select65, %"_ZN4core3ptr71drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$i32$GT$$GT$17he1f978817ab19badE.exit20" ]
  %_0.i3.i = icmp eq i32 %iter.sroa.0.080, 9
  %3 = add nsw i32 %iter.sroa.0.080, 1
  %spec.select65 = select i1 %_0.i3.i, i32 9, i32 %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %stack)
  store i64 0, ptr %stack, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %2, align 8
  %_9.not = icmp sgt i32 %iter.sroa.0.080, %n
  br i1 %_9.not, label %"_ZN4core3ptr71drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$i32$GT$$GT$17he1f978817ab19badE.exit20", label %bb1.i

bb4:                                              ; preds = %"_ZN4core3ptr71drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$i32$GT$$GT$17he1f978817ab19badE.exit20"
  ret i32 %result.sroa.0.2.lcssa119

bb6:                                              ; preds = %bb1.i
  %len.pre.i = load i64, ptr %1, align 8, !alias.scope !1043
  %self2.pre.i = load i64, ptr %stack, align 8, !range !1031, !alias.scope !1043
  %4 = add i64 %len.pre.i, 1
  %idx.i = load i64, ptr %0, align 8, !alias.scope !1043, !noundef !23
  %logical_index.i = add i64 %idx.i, %len.pre.i
  %_21.not.i = icmp ult i64 %logical_index.i, %self2.pre.i
  %5 = select i1 %_21.not.i, i64 0, i64 %self2.pre.i
  %off.sroa.0.0.i = sub nuw i64 %logical_index.i, %5
  %_24.i = load ptr, ptr %2, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %_22.i = getelementptr inbounds nuw i32, ptr %_24.i, i64 %off.sroa.0.0.i
  store i32 %iter.sroa.0.080, ptr %_22.i, align 4, !noalias !1043
  %6 = add i32 %result.sroa.0.081, 1
  %_1177 = icmp eq i64 %4, 0
  br i1 %_1177, label %bb8, label %bb22

bb1.i:                                            ; preds = %bb2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
; invoke alloc::collections::vec_deque::VecDeque<T,A>::grow
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h458206cee1aa18e5E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %stack)
          to label %bb6 unwind label %cleanup.loopexit.split-lp

cleanup.loopexit:                                 ; preds = %bb1.i46
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %bb1.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %self1.i.i.i.i1.i = load i64, ptr %stack, align 8, !range !1031, !alias.scope !1058, !noalias !1061, !noundef !23
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb18, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup
  %7 = shl nuw i64 %self1.i.i.i.i1.i, 2
  %self3.i.i.i.i4.i = load ptr, ptr %2, align 8, !alias.scope !1058, !noalias !1061, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %7, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1063
  br label %bb18

bb7.loopexit:                                     ; preds = %bb15
  %_11 = icmp eq i64 %_27, 0
  br i1 %_11, label %bb8, label %bb22

bb8:                                              ; preds = %bb7.loopexit, %bb6
  %self1.i.i.i.i1.i16 = phi i64 [ %self2.pre.i, %bb6 ], [ %self1.i3599, %bb7.loopexit ]
  %result.sroa.0.2.lcssa = phi i32 [ %6, %bb6 ], [ %result.sroa.0.4, %bb7.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %_6.i.i.i.i2.i17 = icmp eq i64 %self1.i.i.i.i1.i16, 0
  br i1 %_6.i.i.i.i2.i17, label %"_ZN4core3ptr71drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$i32$GT$$GT$17he1f978817ab19badE.exit20", label %bb2.i.i.i3.i18

bb2.i.i.i3.i18:                                   ; preds = %bb8
  %8 = shl nuw i64 %self1.i.i.i.i1.i16, 2
  %self3.i.i.i.i4.i19 = load ptr, ptr %2, align 8, !alias.scope !1076, !noalias !1079, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i19, i64 noundef %8, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1081
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$i32$GT$$GT$17he1f978817ab19badE.exit20"

"_ZN4core3ptr71drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$i32$GT$$GT$17he1f978817ab19badE.exit20": ; preds = %bb2.i, %bb8, %bb2.i.i.i3.i18
  %result.sroa.0.2.lcssa119 = phi i32 [ %result.sroa.0.2.lcssa, %bb8 ], [ %result.sroa.0.2.lcssa, %bb2.i.i.i3.i18 ], [ %result.sroa.0.081, %bb2.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %stack)
  %_0.i.not.i = icmp sgt i32 %spec.select65, 9
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb22:                                             ; preds = %bb6, %bb7.loopexit
  %_24.i44106 = phi ptr [ %_24.i44107, %bb7.loopexit ], [ %_24.i, %bb6 ]
  %idx.i40102 = phi i64 [ %idx.i40103, %bb7.loopexit ], [ %idx.i, %bb6 ]
  %self1.i3598 = phi i64 [ %self1.i3599, %bb7.loopexit ], [ %self2.pre.i, %bb6 ]
  %_27.i = phi ptr [ %_27.i91, %bb7.loopexit ], [ %_24.i, %bb6 ]
  %idx2.i = phi i64 [ %idx2.i87, %bb7.loopexit ], [ %idx.i, %bb6 ]
  %self1.i10 = phi i64 [ %self1.i1083, %bb7.loopexit ], [ %self2.pre.i, %bb6 ]
  %_2779 = phi i64 [ %_27, %bb7.loopexit ], [ %4, %bb6 ]
  %result.sroa.0.278 = phi i32 [ %result.sroa.0.4, %bb7.loopexit ], [ %6, %bb6 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  %9 = add i64 %_2779, -1
  store i64 %9, ptr %1, align 8, !alias.scope !1082
  %cond.i = icmp ult i64 %9, %self1.i10
  tail call void @llvm.assume(i1 %cond.i)
  %logical_index.i11 = add i64 %idx2.i, %9
  %_23.not.i = icmp ult i64 %logical_index.i11, %self1.i10
  %10 = select i1 %_23.not.i, i64 0, i64 %self1.i10
  %off.sroa.0.0.i12 = sub nuw i64 %logical_index.i11, %10
  %_25.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %off.sroa.0.0.i12
  %_6.i = load i32, ptr %_25.i, align 4, !noalias !1082, !noundef !23
  %_16 = srem i32 %_6.i, 10
  %_23 = mul i32 %_6.i, 10
  br label %bb2.i27

bb2.i27:                                          ; preds = %bb22, %bb15
  %_24.i44105 = phi ptr [ %_24.i44106, %bb22 ], [ %_24.i44107, %bb15 ]
  %idx.i40101 = phi i64 [ %idx.i40102, %bb22 ], [ %idx.i40103, %bb15 ]
  %self1.i35 = phi i64 [ %self1.i3598, %bb22 ], [ %self1.i3599, %bb15 ]
  %_8.i34 = phi i64 [ %9, %bb22 ], [ %_27, %bb15 ]
  %_27.i92 = phi ptr [ %_27.i, %bb22 ], [ %_27.i91, %bb15 ]
  %idx2.i88 = phi i64 [ %idx2.i, %bb22 ], [ %idx2.i87, %bb15 ]
  %self1.i1084 = phi i64 [ %self1.i10, %bb22 ], [ %self1.i1083, %bb15 ]
  %result.sroa.0.375 = phi i32 [ %result.sroa.0.278, %bb22 ], [ %result.sroa.0.4, %bb15 ]
  %iter1.sroa.0.074 = phi i32 [ %_16, %bb22 ], [ %spec.select66, %bb15 ]
  %_0.i3.i28 = icmp eq i32 %iter1.sroa.0.074, 9
  %11 = add nsw i32 %iter1.sroa.0.074, 1
  %spec.select66 = select i1 %_0.i3.i28, i32 9, i32 %11
  %x = add i32 %iter1.sroa.0.074, %_23
  %_24.not = icmp sgt i32 %x, %n
  br i1 %_24.not, label %bb15, label %bb14

bb15:                                             ; preds = %bb24, %bb2.i27
  %_24.i44107 = phi ptr [ %_24.i44, %bb24 ], [ %_24.i44105, %bb2.i27 ]
  %idx.i40103 = phi i64 [ %idx.i40, %bb24 ], [ %idx.i40101, %bb2.i27 ]
  %self1.i3599 = phi i64 [ %self1.i35100, %bb24 ], [ %self1.i35, %bb2.i27 ]
  %_27 = phi i64 [ %12, %bb24 ], [ %_8.i34, %bb2.i27 ]
  %_27.i91 = phi ptr [ %_24.i44, %bb24 ], [ %_27.i92, %bb2.i27 ]
  %idx2.i87 = phi i64 [ %idx.i40, %bb24 ], [ %idx2.i88, %bb2.i27 ]
  %self1.i1083 = phi i64 [ %self1.i35100, %bb24 ], [ %self1.i1084, %bb2.i27 ]
  %result.sroa.0.4 = phi i32 [ %14, %bb24 ], [ %result.sroa.0.375, %bb2.i27 ]
  %_0.i.not.i26 = icmp sgt i32 %spec.select66, 9
  %or.cond68 = select i1 %_0.i3.i28, i1 true, i1 %_0.i.not.i26
  br i1 %or.cond68, label %bb7.loopexit, label %bb2.i27

bb14:                                             ; preds = %bb2.i27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %_3.i36 = icmp eq i64 %_8.i34, %self1.i35
  br i1 %_3.i36, label %bb1.i46, label %bb24

bb1.i46:                                          ; preds = %bb14
; invoke alloc::collections::vec_deque::VecDeque<T,A>::grow
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h458206cee1aa18e5E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %stack)
          to label %.noexc49 unwind label %cleanup.loopexit

.noexc49:                                         ; preds = %bb1.i46
  %len.pre.i47 = load i64, ptr %1, align 8, !alias.scope !1085
  %self2.pre.i48 = load i64, ptr %stack, align 8, !range !1031, !alias.scope !1085
  %idx.i40.pre = load i64, ptr %0, align 8, !alias.scope !1085
  %_24.i44.pre = load ptr, ptr %2, align 8, !alias.scope !1085
  br label %bb24

bb24:                                             ; preds = %.noexc49, %bb14
  %_24.i44 = phi ptr [ %_24.i44.pre, %.noexc49 ], [ %_24.i44105, %bb14 ]
  %idx.i40 = phi i64 [ %idx.i40.pre, %.noexc49 ], [ %idx.i40101, %bb14 ]
  %self1.i35100 = phi i64 [ %self2.pre.i48, %.noexc49 ], [ %self1.i35, %bb14 ]
  %len.i39 = phi i64 [ %len.pre.i47, %.noexc49 ], [ %_8.i34, %bb14 ]
  %12 = add i64 %len.i39, 1
  store i64 %12, ptr %1, align 8, !alias.scope !1085
  %logical_index.i41 = add i64 %idx.i40, %len.i39
  %_21.not.i42 = icmp ult i64 %logical_index.i41, %self1.i35100
  %13 = select i1 %_21.not.i42, i64 0, i64 %self1.i35100
  %off.sroa.0.0.i43 = sub nuw i64 %logical_index.i41, %13
  %_22.i45 = getelementptr inbounds nuw i32, ptr %_24.i44, i64 %off.sroa.0.0.i43
  store i32 %x, ptr %_22.i45, align 4, !noalias !1085
  %14 = add i32 %result.sroa.0.375, 1
  br label %bb15

bb18:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  resume { ptr, i32 } %lpad.phi
}
