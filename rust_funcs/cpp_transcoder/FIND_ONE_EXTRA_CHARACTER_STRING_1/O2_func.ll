define noundef range(i32 0, 256) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %strA, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %strB) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %strA, i64 16
  %iter2 = load i64, ptr %0, align 8, !noundef !23
  %_17 = icmp sgt i64 %iter2, -1
  tail call void @llvm.assume(i1 %_17)
  %_1827.not = icmp eq i64 %iter2, 0
  br i1 %_1827.not, label %bb11, label %bb2.lr.ph

bb2.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %strA, i64 8
  %_24 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %min.iters.check = icmp samesign ult i64 %iter2, 8
  br i1 %min.iters.check, label %bb2.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb2.lr.ph
  %n.vec = and i64 %iter2, 9223372036854775800
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %6, %vector.body ]
  %vec.phi38 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %7, %vector.body ]
  %2 = getelementptr inbounds nuw i8, ptr %_24, i64 %index
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %wide.load = load <4 x i8>, ptr %2, align 1
  %wide.load39 = load <4 x i8>, ptr %3, align 1
  %4 = zext <4 x i8> %wide.load to <4 x i32>
  %5 = zext <4 x i8> %wide.load39 to <4 x i32>
  %6 = xor <4 x i32> %vec.phi, %4
  %7 = xor <4 x i32> %vec.phi38, %5
  %index.next = add nuw i64 %index, 8
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !1031

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %7, %6
  %9 = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i64 %iter2, %n.vec
  br i1 %cmp.n, label %bb11, label %bb2.preheader

bb2.preheader:                                    ; preds = %bb2.lr.ph, %middle.block
  %res.sroa.0.029.ph = phi i32 [ 0, %bb2.lr.ph ], [ %9, %middle.block ]
  %iter.sroa.0.028.ph = phi i64 [ 0, %bb2.lr.ph ], [ %n.vec, %middle.block ]
  br label %bb2

bb11:                                             ; preds = %bb2, %middle.block, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %9, %middle.block ], [ %28, %bb2 ]
  %10 = getelementptr inbounds nuw i8, ptr %strB, i64 16
  %iter3 = load i64, ptr %10, align 8, !noundef !23
  %_26 = icmp sgt i64 %iter3, -1
  tail call void @llvm.assume(i1 %_26)
  %_2730.not = icmp eq i64 %iter3, 0
  br i1 %_2730.not, label %bb13, label %bb4.lr.ph

bb4.lr.ph:                                        ; preds = %bb11
  %11 = getelementptr inbounds nuw i8, ptr %strB, i64 8
  %_33 = load ptr, ptr %11, align 8, !nonnull !23, !noundef !23
  %min.iters.check41 = icmp samesign ult i64 %iter3, 8
  br i1 %min.iters.check41, label %bb4.preheader, label %vector.ph42

vector.ph42:                                      ; preds = %bb4.lr.ph
  %n.vec44 = and i64 %iter3, 9223372036854775800
  %12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %res.sroa.0.0.lcssa, i64 0
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph42
  %index46 = phi i64 [ 0, %vector.ph42 ], [ %index.next51, %vector.body45 ]
  %vec.phi47 = phi <4 x i32> [ %12, %vector.ph42 ], [ %17, %vector.body45 ]
  %vec.phi48 = phi <4 x i32> [ zeroinitializer, %vector.ph42 ], [ %18, %vector.body45 ]
  %13 = getelementptr inbounds nuw i8, ptr %_33, i64 %index46
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %wide.load49 = load <4 x i8>, ptr %13, align 1
  %wide.load50 = load <4 x i8>, ptr %14, align 1
  %15 = zext <4 x i8> %wide.load49 to <4 x i32>
  %16 = zext <4 x i8> %wide.load50 to <4 x i32>
  %17 = xor <4 x i32> %vec.phi47, %15
  %18 = xor <4 x i32> %vec.phi48, %16
  %index.next51 = add nuw i64 %index46, 8
  %19 = icmp eq i64 %index.next51, %n.vec44
  br i1 %19, label %middle.block52, label %vector.body45, !llvm.loop !1032

middle.block52:                                   ; preds = %vector.body45
  %bin.rdx53 = xor <4 x i32> %18, %17
  %20 = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx53)
  %cmp.n54 = icmp eq i64 %iter3, %n.vec44
  br i1 %cmp.n54, label %bb13, label %bb4.preheader

bb4.preheader:                                    ; preds = %bb4.lr.ph, %middle.block52
  %res.sroa.0.132.ph = phi i32 [ %res.sroa.0.0.lcssa, %bb4.lr.ph ], [ %20, %middle.block52 ]
  %iter1.sroa.0.031.ph = phi i64 [ 0, %bb4.lr.ph ], [ %n.vec44, %middle.block52 ]
  br label %bb4

bb13:                                             ; preds = %bb4, %middle.block52, %bb11
  %res.sroa.0.1.lcssa = phi i32 [ %res.sroa.0.0.lcssa, %bb11 ], [ %20, %middle.block52 ], [ %25, %bb4 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  %self1.i.i.i.i1.i.i = load i64, ptr %strB, align 8, !range !1048, !alias.scope !1049, !noalias !1052, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb5, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb13
  %21 = getelementptr inbounds nuw i8, ptr %strB, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %21, align 8, !alias.scope !1049, !noalias !1052, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1054
  br label %bb5

bb5:                                              ; preds = %bb2.i.i.i3.i.i, %bb13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  %self1.i.i.i.i1.i.i17 = load i64, ptr %strA, align 8, !range !1048, !alias.scope !1070, !noalias !1073, !noundef !23
  %_6.i.i.i.i2.i.i18 = icmp eq i64 %self1.i.i.i.i1.i.i17, 0
  br i1 %_6.i.i.i.i2.i.i18, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbcf094549d56de74E.exit21", label %bb2.i.i.i3.i.i19

bb2.i.i.i3.i.i19:                                 ; preds = %bb5
  %22 = getelementptr inbounds nuw i8, ptr %strA, i64 8
  %self3.i.i.i.i4.i.i20 = load ptr, ptr %22, align 8, !alias.scope !1070, !noalias !1073, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i20, i64 noundef %self1.i.i.i.i1.i.i17, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1075
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbcf094549d56de74E.exit21"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbcf094549d56de74E.exit21": ; preds = %bb5, %bb2.i.i.i3.i.i19
  ret i32 %res.sroa.0.1.lcssa

bb4:                                              ; preds = %bb4.preheader, %bb4
  %res.sroa.0.132 = phi i32 [ %25, %bb4 ], [ %res.sroa.0.132.ph, %bb4.preheader ]
  %iter1.sroa.0.031 = phi i64 [ %23, %bb4 ], [ %iter1.sroa.0.031.ph, %bb4.preheader ]
  %23 = add nuw nsw i64 %iter1.sroa.0.031, 1
  %24 = getelementptr inbounds nuw i8, ptr %_33, i64 %iter1.sroa.0.031
  %_14 = load i8, ptr %24, align 1, !noundef !23
  %_13 = zext i8 %_14 to i32
  %25 = xor i32 %res.sroa.0.132, %_13
  %exitcond35.not = icmp eq i64 %23, %iter3
  br i1 %exitcond35.not, label %bb13, label %bb4, !llvm.loop !1076

bb2:                                              ; preds = %bb2.preheader, %bb2
  %res.sroa.0.029 = phi i32 [ %28, %bb2 ], [ %res.sroa.0.029.ph, %bb2.preheader ]
  %iter.sroa.0.028 = phi i64 [ %26, %bb2 ], [ %iter.sroa.0.028.ph, %bb2.preheader ]
  %26 = add nuw nsw i64 %iter.sroa.0.028, 1
  %27 = getelementptr inbounds nuw i8, ptr %_24, i64 %iter.sroa.0.028
  %_8 = load i8, ptr %27, align 1, !noundef !23
  %_7 = zext i8 %_8 to i32
  %28 = xor i32 %res.sroa.0.029, %_7
  %exitcond.not = icmp eq i64 %26, %iter2
  br i1 %exitcond.not, label %bb11, label %bb2, !llvm.loop !1077
}
