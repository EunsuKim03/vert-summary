define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  %_21.0.i.i.i = shl nsw i64 %_4, 2
  %_21.1.i.i.i = icmp ugt i64 %_4, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_4, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6ac3d5927bd66ef3E.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %2 = ptrtoint ptr %0 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6ac3d5927bd66ef3E.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6ac3d5927bd66ef3E.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %2, %bb10.i.i ], [ 4, %bb17.i.i ]
  %3 = inttoptr i64 %_16.sroa.10.0.i to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %4 = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb3.i.i, label %bb6.i

bb3.i.i:                                          ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6ac3d5927bd66ef3E.exit"
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 8, i64 48) #21
          to label %.noexc.i unwind label %bb4.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb6.i:                                            ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6ac3d5927bd66ef3E.exit"
  store i64 2, ptr %v.i, align 8, !noalias !1077
  %6 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %4, ptr %6, align 8, !noalias !1077
  %7 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfcd3f9d476f07fd0E.exit", label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb6.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %8 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i.i.i.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfcd3f9d476f07fd0E.exit"

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %10 = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %7, align 8, !alias.scope !1084, !noalias !1098
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1103
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h407e1bf5e939d9d5E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %15, %cleanup ], [ %10, %cleanup1.body.i ], [ %11, %bb4.i ], [ %11, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1112
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfcd3f9d476f07fd0E.exit": ; preds = %bb6.i, %bb3.i.i.i.i.i.i
  %_4.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb6.i ], [ %8, %bb3.i.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %_4.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %3, i64 %_21.0.i.i.i, i1 false), !noalias !1121
  store i64 %_4, ptr %4, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %_4.sroa.10.0.i.i.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %_4, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %_4, ptr %_15.i.i, align 8, !noalias !1122
  %_7.sroa.5.0._15.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %3, ptr %_7.sroa.5.0._15.i.sroa_idx.i, align 8, !noalias !1122
  %_7.sroa.7.0._15.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %_4, ptr %_7.sroa.7.0._15.i.sroa_idx.i, align 8, !noalias !1122
  store i64 2, ptr %7, align 8, !alias.scope !1084, !noalias !1123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dp, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %12 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_44 = load i64, ptr %12, align 8, !noundef !6
  %_47.not = icmp eq i64 %_44, 0
  br i1 %_47.not, label %panic19.invoke, label %bb10

bb10:                                             ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfcd3f9d476f07fd0E.exit"
  %13 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_45 = load ptr, ptr %13, align 8, !nonnull !6, !noundef !6
  %14 = getelementptr inbounds nuw i8, ptr %_45, i64 16
  %_50 = load i64, ptr %14, align 8, !noundef !6
  %_53 = icmp ugt i64 %_50, 1
  br i1 %_53, label %bb11, label %panic19.invoke

cleanup:                                          ; preds = %panic19.invoke
  %15 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h407e1bf5e939d9d5E"(ptr noalias noundef align 8 dereferenceable(24) %dp) #23
  br label %common.resume

bb11:                                             ; preds = %bb10
  %16 = getelementptr inbounds nuw i8, ptr %_45, i64 8
  %_51 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_6 = getelementptr inbounds nuw i8, ptr %_51, i64 4
  store i32 1, ptr %_6, align 4
  %_59.not = icmp eq i64 %_44, 1
  br i1 %_59.not, label %panic19.invoke, label %bb12

bb12:                                             ; preds = %bb11
  %17 = getelementptr inbounds nuw i8, ptr %_45, i64 40
  %_62 = load i64, ptr %17, align 8, !noundef !6
  %_65 = icmp ugt i64 %_62, 1
  br i1 %_65, label %bb13, label %panic19.invoke

bb13:                                             ; preds = %bb12
  %18 = getelementptr inbounds nuw i8, ptr %_45, i64 32
  %_63 = load ptr, ptr %18, align 8, !nonnull !6, !noundef !6
  %_8 = getelementptr inbounds nuw i8, ptr %_63, i64 4
  store i32 2, ptr %_8, align 4
  %_0.i.not.i53 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i53, label %bb16, label %bb2.i

bb2.i:                                            ; preds = %bb13, %bb27
  %iter.sroa.0.054 = phi i32 [ %spec.select, %bb27 ], [ 2, %bb13 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.054, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %19 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.054, %19
  %_20 = add nsw i32 %iter.sroa.0.054, -1
  %_19 = sext i32 %_20 to i64
  %_78 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_77 = load i64, ptr %14, align 8, !noundef !6
  %_80 = icmp ugt i64 %_77, %_19
  br i1 %_80, label %bb17, label %panic19.invoke

bb16:                                             ; preds = %bb27, %bb13
  %_136 = load i64, ptr %14, align 8, !noundef !6
  %_139 = icmp ugt i64 %_136, %_5
  br i1 %_139, label %bb29, label %panic19.invoke

bb29:                                             ; preds = %bb16
  %_146 = load i64, ptr %17, align 8, !noundef !6
  %_149 = icmp ugt i64 %_146, %_5
  br i1 %_149, label %bb30, label %panic19.invoke

bb30:                                             ; preds = %bb29
  %_137 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_37 = getelementptr inbounds nuw i32, ptr %_137, i64 %_5
  %_36 = load i32, ptr %_37, align 4, !noundef !6
  %_147 = load ptr, ptr %18, align 8, !nonnull !6, !noundef !6
  %_40 = getelementptr inbounds nuw i32, ptr %_147, i64 %_5
  %_39 = load i32, ptr %_40, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb30, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2e7dfbc60ae27b61E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %20, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2e7dfbc60ae27b61E.exit.i.i.i" ], [ 0, %bb30 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_45, i64 %_3.sroa.0.012.i.i.i
  %20 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1147, !noalias !1150, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2e7dfbc60ae27b61E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %21 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %22 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %22, align 8, !alias.scope !1147, !noalias !1150, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %21, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1154
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2e7dfbc60ae27b61E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2e7dfbc60ae27b61E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %20, %_44
  br i1 %_7.i.i.i, label %bb4.i23, label %bb5.i.i.i

bb4.i23:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2e7dfbc60ae27b61E.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %self1.i.i.i.i1.i = load i64, ptr %dp, align 8, !range !22, !alias.scope !1164, !noalias !1167, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h407e1bf5e939d9d5E.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i23
  %23 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_45, i64 noundef %23, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1169
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h407e1bf5e939d9d5E.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h407e1bf5e939d9d5E.exit": ; preds = %bb4.i23, %bb2.i.i.i3.i
  %_0 = add i32 %_39, %_36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb17:                                             ; preds = %bb2.i
  %_17 = getelementptr inbounds nuw i32, ptr %_78, i64 %_19
  %_16 = load i32, ptr %_17, align 4, !noundef !6
  %_87 = load i64, ptr %17, align 8, !noundef !6
  %_90 = icmp ugt i64 %_87, %_19
  br i1 %_90, label %bb19, label %panic19.invoke

bb19:                                             ; preds = %bb17
  %_26 = zext nneg i32 %iter.sroa.0.054 to i64
  %_102 = icmp ugt i64 %_77, %_26
  br i1 %_102, label %bb22, label %panic19.invoke

bb22:                                             ; preds = %bb19
  %_88 = load ptr, ptr %18, align 8, !nonnull !6, !noundef !6
  %_22 = getelementptr inbounds nuw i32, ptr %_88, i64 %_19
  %_21 = load i32, ptr %_22, align 4, !noundef !6
  %_24 = getelementptr inbounds nuw i32, ptr %_78, i64 %_26
  %24 = add i32 %_21, %_16
  store i32 %24, ptr %_24, align 4
  %_109 = load i64, ptr %14, align 8, !noundef !6
  %_112 = icmp ugt i64 %_109, %_19
  br i1 %_112, label %bb24, label %panic19.invoke

bb24:                                             ; preds = %bb22
  %_110 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_29 = getelementptr inbounds nuw i32, ptr %_110, i64 %_19
  %_28 = load i32, ptr %_29, align 4, !noundef !6
  %_27 = shl i32 %_28, 1
  %_120 = load ptr, ptr %18, align 8, !nonnull !6, !noundef !6
  %_119 = load i64, ptr %17, align 8, !noundef !6
  %_122 = icmp ugt i64 %_119, %_19
  br i1 %_122, label %bb25, label %panic19.invoke

bb25:                                             ; preds = %bb24
  %_134 = icmp ugt i64 %_119, %_26
  br i1 %_134, label %bb27, label %panic19.invoke

bb27:                                             ; preds = %bb25
  %_32 = getelementptr inbounds nuw i32, ptr %_120, i64 %_19
  %_31 = load i32, ptr %_32, align 4, !noundef !6
  %_34 = getelementptr inbounds nuw i32, ptr %_120, i64 %_26
  %25 = add i32 %_31, %_27
  store i32 %25, ptr %_34, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb16, label %bb2.i

panic19.invoke:                                   ; preds = %bb25, %bb24, %bb22, %bb19, %bb17, %bb2.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfcd3f9d476f07fd0E.exit", %bb29, %bb16, %bb12, %bb11, %bb10
  %26 = phi i64 [ 1, %bb10 ], [ 1, %bb11 ], [ 1, %bb12 ], [ %_5, %bb16 ], [ %_5, %bb29 ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfcd3f9d476f07fd0E.exit" ], [ %_19, %bb2.i ], [ %_19, %bb17 ], [ %_26, %bb19 ], [ %_19, %bb22 ], [ %_19, %bb24 ], [ %_26, %bb25 ]
  %27 = phi i64 [ %_50, %bb10 ], [ 1, %bb11 ], [ %_62, %bb12 ], [ %_136, %bb16 ], [ %_146, %bb29 ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfcd3f9d476f07fd0E.exit" ], [ %_77, %bb2.i ], [ %_87, %bb17 ], [ %_77, %bb19 ], [ %_109, %bb22 ], [ %_119, %bb24 ], [ %_119, %bb25 ]
  %28 = phi ptr [ @alloc_156a2292b42cb8b41375b9ac4c541954, %bb10 ], [ @alloc_017e82055919fa76722a845ac35c8f12, %bb11 ], [ @alloc_f01afa1788f94ca0194a04eebed45386, %bb12 ], [ @alloc_9d9e59c56836b55a4d140441f15c77df, %bb16 ], [ @alloc_70089a8c124d263157bfb7841de64092, %bb29 ], [ @alloc_2bda443dd6e5d6a3b8b636afe9b38016, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfcd3f9d476f07fd0E.exit" ], [ @alloc_431060d0cd41bee65d4038b2fe531622, %bb2.i ], [ @alloc_5a059bd1e0e55f2841781da6641e1915, %bb17 ], [ @alloc_18906e21970eb3031c37f117adeebbeb, %bb19 ], [ @alloc_c6b826aae231a2bff9e4ee453f85fc33, %bb22 ], [ @alloc_3d9ce4fb900a8219c8abaf9ac04b5679, %bb24 ], [ @alloc_5af7cd25c882f3f07e0fc75fc0b28712, %bb25 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %26, i64 noundef %27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %28) #21
          to label %panic19.cont unwind label %cleanup

panic19.cont:                                     ; preds = %panic19.invoke
  unreachable
}
