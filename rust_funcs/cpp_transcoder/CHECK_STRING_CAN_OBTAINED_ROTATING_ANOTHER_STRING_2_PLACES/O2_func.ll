define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str1, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str2) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %anticlock_rot = alloca [24 x i8], align 8
  %clock_rot = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %clock_rot)
  store i64 0, ptr %clock_rot, align 8
  %_20.sroa.3.0.clock_rot.sroa_idx = getelementptr inbounds nuw i8, ptr %clock_rot, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_20.sroa.3.0.clock_rot.sroa_idx, align 8
  %_20.sroa.4.0.clock_rot.sroa_idx = getelementptr inbounds nuw i8, ptr %clock_rot, i64 16
  store i64 0, ptr %_20.sroa.4.0.clock_rot.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %anticlock_rot)
  store i64 0, ptr %anticlock_rot, align 8
  %_20.sroa.3.0.anticlock_rot.sroa_idx = getelementptr inbounds nuw i8, ptr %anticlock_rot, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_20.sroa.3.0.anticlock_rot.sroa_idx, align 8
  %_20.sroa.4.0.anticlock_rot.sroa_idx = getelementptr inbounds nuw i8, ptr %anticlock_rot, i64 16
  store i64 0, ptr %_20.sroa.4.0.anticlock_rot.sroa_idx, align 8
  %0 = getelementptr inbounds nuw i8, ptr %str2, i64 16
  %len = load i64, ptr %0, align 8, !noundef !23
  %_21 = icmp sgt i64 %len, -1
  tail call void @llvm.assume(i1 %_21)
  %_9 = add nsw i64 %len, -2
  %1 = getelementptr inbounds nuw i8, ptr %str2, i64 8
  %_26 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_3.not.i = icmp samesign ult i64 %len, 2
  br i1 %_3.not.i, label %bb28.invoke, label %bb1.i

bb1.i:                                            ; preds = %start
  %_11.i = icmp eq i64 %_9, 0
  br i1 %_11.i, label %bb1.i.i.i, label %bb13.i

bb13.i:                                           ; preds = %bb1.i
  %2 = getelementptr inbounds nuw i8, ptr %_26, i64 %_9
  %self.i = load i8, ptr %2, align 1, !alias.scope !1042, !noundef !23
  %3 = icmp sgt i8 %self.i, -65
  br i1 %3, label %bb1.i.i.i, label %bb28.invoke

cleanup:                                          ; preds = %bb1.i.i.i, %bb1.i.i.i37, %bb1.i.i.i68, %bb1.i.i.i92, %bb28.invoke
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  %self1.i.i.i.i1.i.i = load i64, ptr %anticlock_rot, align 8, !range !1031, !alias.scope !1060, !noalias !1063, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb10, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup
  %self3.i.i.i.i4.i.i = load ptr, ptr %_20.sroa.3.0.anticlock_rot.sroa_idx, align 8, !alias.scope !1060, !noalias !1063, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1065
  br label %bb10

bb1.i.i.i:                                        ; preds = %bb1.i, %bb13.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h2d2f2a50ed0da396E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %anticlock_rot, i64 noundef 0, i64 noundef 2)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb1.i.i.i
  %data.i = getelementptr inbounds nuw i8, ptr %_26, i64 %_9
  %len.pre.i.i = load i64, ptr %_20.sroa.4.0.anticlock_rot.sroa_idx, align 8, !alias.scope !1072
  %_9.i.i = icmp sgt i64 %len.pre.i.i, -1
  tail call void @llvm.assume(i1 %_9.i.i)
  %_10.i.i = load ptr, ptr %_20.sroa.3.0.anticlock_rot.sroa_idx, align 8, !alias.scope !1072, !nonnull !23, !noundef !23
  %dst.i.i = getelementptr inbounds nuw i8, ptr %_10.i.i, i64 %len.pre.i.i
  %5 = load i16, ptr %data.i, align 1, !noalias !1072
  store i16 %5, ptr %dst.i.i, align 1, !noalias !1072
  %6 = add nuw i64 %len.pre.i.i, 2
  store i64 %6, ptr %_20.sroa.4.0.anticlock_rot.sroa_idx, align 8, !alias.scope !1072
  br i1 %_11.i, label %bb21, label %bb19.i

bb19.i:                                           ; preds = %bb18
  %self2.i = load i8, ptr %data.i, align 1, !alias.scope !1073, !noundef !23
  %7 = icmp sgt i8 %self2.i, -65
  br i1 %7, label %bb21, label %bb28.invoke

bb21:                                             ; preds = %bb19.i, %bb18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  %self2.i.i.i30 = load i64, ptr %anticlock_rot, align 8, !range !1031, !alias.scope !1082, !noundef !23
  %_9.i.i.i31 = sub i64 %self2.i.i.i30, %6
  %_7.i.i.i32 = icmp ugt i64 %_9, %_9.i.i.i31
  br i1 %_7.i.i.i32, label %bb1.i.i.i37, label %bb22, !prof !909

bb1.i.i.i37:                                      ; preds = %bb21
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h2d2f2a50ed0da396E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %anticlock_rot, i64 noundef %6, i64 noundef %_9)
          to label %bb22.thread unwind label %cleanup

bb22.thread:                                      ; preds = %bb1.i.i.i37
  %len.pre.i.i38 = load i64, ptr %_20.sroa.4.0.anticlock_rot.sroa_idx, align 8, !alias.scope !1085
  %_10.i.i35.pre = load ptr, ptr %_20.sroa.3.0.anticlock_rot.sroa_idx, align 8, !alias.scope !1085
  %_9.i.i34156 = icmp sgt i64 %len.pre.i.i38, -1
  tail call void @llvm.assume(i1 %_9.i.i34156)
  %dst.i.i36157 = getelementptr inbounds nuw i8, ptr %_10.i.i35.pre, i64 %len.pre.i.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %dst.i.i36157, ptr nonnull readonly align 1 %_26, i64 %_9, i1 false), !noalias !1085
  %8 = add i64 %len.pre.i.i38, %_9
  br label %bb13.i57

bb22:                                             ; preds = %bb21
  %_9.i.i34 = icmp sgt i64 %6, -1
  tail call void @llvm.assume(i1 %_9.i.i34)
  %dst.i.i36 = getelementptr inbounds nuw i8, ptr %_10.i.i, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %dst.i.i36, ptr nonnull readonly align 1 %_26, i64 %_9, i1 false), !noalias !1085
  %9 = add nuw i64 %len.pre.i.i, %len
  %_12.not.i44.not = icmp eq i64 %len, 2
  br i1 %_12.not.i44.not, label %bb26.thread, label %bb13.i57

bb26.thread:                                      ; preds = %bb22
  %data.i54165 = getelementptr inbounds nuw i8, ptr %_26, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 inttoptr (i64 1 to ptr), ptr nonnull readonly align 1 %data.i54165, i64 %_9, i1 false), !noalias !1086
  store i64 %_9, ptr %_20.sroa.4.0.clock_rot.sroa_idx, align 8, !alias.scope !1086
  br label %bb29

bb13.i57:                                         ; preds = %bb22.thread, %bb22
  %10 = phi i64 [ %8, %bb22.thread ], [ %9, %bb22 ]
  %_10.i.i35159 = phi ptr [ %_10.i.i35.pre, %bb22.thread ], [ %_10.i.i, %bb22 ]
  %11 = getelementptr inbounds nuw i8, ptr %_26, i64 2
  %self.i58 = load i8, ptr %11, align 1, !alias.scope !1091, !noundef !23
  %12 = icmp sgt i8 %self.i58, -65
  br i1 %12, label %bb1.i.i.i68, label %bb28.invoke

bb1.i.i.i68:                                      ; preds = %bb13.i57
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h2d2f2a50ed0da396E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %clock_rot, i64 noundef 0, i64 noundef %_9)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb1.i.i.i68
  %data.i54 = getelementptr inbounds nuw i8, ptr %_26, i64 2
  %len.pre.i.i69 = load i64, ptr %_20.sroa.4.0.clock_rot.sroa_idx, align 8, !alias.scope !1086
  %_10.i.i66.pre = load ptr, ptr %_20.sroa.3.0.clock_rot.sroa_idx, align 8, !alias.scope !1086
  %_9.i.i65 = icmp sgt i64 %len.pre.i.i69, -1
  tail call void @llvm.assume(i1 %_9.i.i65)
  %dst.i.i67 = getelementptr inbounds nuw i8, ptr %_10.i.i66.pre, i64 %len.pre.i.i69
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %dst.i.i67, ptr nonnull readonly align 1 %data.i54, i64 %_9, i1 false), !noalias !1086
  %13 = add nuw i64 %len.pre.i.i69, %_9
  store i64 %13, ptr %_20.sroa.4.0.clock_rot.sroa_idx, align 8, !alias.scope !1086
  %self2.i82 = load i8, ptr %data.i54, align 1, !alias.scope !1096, !noundef !23
  %14 = icmp sgt i8 %self2.i82, -65
  br i1 %14, label %bb29, label %bb28.invoke

bb29:                                             ; preds = %bb26.thread, %bb26
  %15 = phi i64 [ 0, %bb26.thread ], [ %13, %bb26 ]
  %_10.i.i66177 = phi ptr [ inttoptr (i64 1 to ptr), %bb26.thread ], [ %_10.i.i66.pre, %bb26 ]
  %16 = phi i64 [ %9, %bb26.thread ], [ %10, %bb26 ]
  %_10.i.i35160167176 = phi ptr [ %_10.i.i, %bb26.thread ], [ %_10.i.i35159, %bb26 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %self2.i.i.i85 = load i64, ptr %clock_rot, align 8, !range !1031, !alias.scope !1105, !noundef !23
  %_9.i.i.i86 = sub i64 %self2.i.i.i85, %15
  %_7.i.i.i87 = icmp ult i64 %_9.i.i.i86, 2
  br i1 %_7.i.i.i87, label %bb1.i.i.i92, label %bb30, !prof !909

bb1.i.i.i92:                                      ; preds = %bb29
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h2d2f2a50ed0da396E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %clock_rot, i64 noundef %15, i64 noundef 2)
          to label %.noexc94 unwind label %cleanup

.noexc94:                                         ; preds = %bb1.i.i.i92
  %len.pre.i.i93 = load i64, ptr %_20.sroa.4.0.clock_rot.sroa_idx, align 8, !alias.scope !1108
  %_10.i.i90.pre = load ptr, ptr %_20.sroa.3.0.clock_rot.sroa_idx, align 8, !alias.scope !1108
  br label %bb30

bb28.invoke:                                      ; preds = %bb26, %bb13.i57, %bb19.i, %start, %bb13.i
  %17 = phi i64 [ %_9, %bb13.i ], [ %_9, %start ], [ 0, %bb19.i ], [ 2, %bb13.i57 ], [ 0, %bb26 ]
  %18 = phi i64 [ %len, %bb13.i ], [ %len, %start ], [ %_9, %bb19.i ], [ %len, %bb13.i57 ], [ 2, %bb26 ]
  %19 = phi ptr [ @alloc_c8270cce062007783179b63036de03d7, %bb13.i ], [ @alloc_c8270cce062007783179b63036de03d7, %start ], [ @alloc_2bcc43f06b47b13f4322c35062bc9814, %bb19.i ], [ @alloc_9a1ce75ec7b40457b1872c2279b3cfff, %bb13.i57 ], [ @alloc_0dcff3af21340686aedebe730c08cf7a, %bb26 ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_26, i64 noundef %len, i64 noundef %17, i64 noundef %18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %19) #23
          to label %bb28.cont unwind label %cleanup

bb28.cont:                                        ; preds = %bb28.invoke
  unreachable

bb30:                                             ; preds = %.noexc94, %bb29
  %_10.i.i90 = phi ptr [ %_10.i.i66177, %bb29 ], [ %_10.i.i90.pre, %.noexc94 ]
  %len.i.i88 = phi i64 [ %15, %bb29 ], [ %len.pre.i.i93, %.noexc94 ]
  %_9.i.i89 = icmp sgt i64 %len.i.i88, -1
  tail call void @llvm.assume(i1 %_9.i.i89)
  %dst.i.i91 = getelementptr inbounds nuw i8, ptr %_10.i.i90, i64 %len.i.i88
  %20 = load i16, ptr %_26, align 1, !noalias !1108
  store i16 %20, ptr %dst.i.i91, align 1, !noalias !1108
  %21 = add nuw i64 %len.i.i88, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %22 = getelementptr inbounds nuw i8, ptr %str1, i64 16
  %len1.i = load i64, ptr %22, align 8, !alias.scope !1109, !noalias !1112, !noundef !23
  %_3.not.i.i = icmp eq i64 %len1.i, %21
  br i1 %_3.not.i.i, label %bb31, label %bb1

bb31:                                             ; preds = %bb30
  %23 = getelementptr inbounds nuw i8, ptr %str1, i64 8
  %_6.i = load ptr, ptr %23, align 8, !alias.scope !1109, !noalias !1112, !nonnull !23, !noundef !23
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %_6.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %_10.i.i90, i64 range(i64 0, -9223372036854775808) %21), !alias.scope !1114, !noalias !1118
  %24 = icmp eq i32 %bcmp.i.i, 0
  br i1 %24, label %bb4, label %bb1

bb1:                                              ; preds = %bb30, %bb31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %_3.not.i.i97 = icmp eq i64 %len1.i, %16
  br i1 %_3.not.i.i97, label %bb32, label %bb4

bb32:                                             ; preds = %bb1
  %25 = getelementptr inbounds nuw i8, ptr %str1, i64 8
  %_6.i101 = load ptr, ptr %25, align 8, !alias.scope !1119, !noalias !1122, !nonnull !23, !noundef !23
  %bcmp.i.i102 = tail call i32 @bcmp(ptr nonnull readonly align 1 %_6.i101, ptr nonnull readonly align 1 %_10.i.i35160167176, i64 range(i64 0, -9223372036854775808) %16), !alias.scope !1124, !noalias !1128
  %bcmp.i.i102.fr = freeze i32 %bcmp.i.i102
  %26 = icmp eq i32 %bcmp.i.i102.fr, 0
  %spec.select = zext i1 %26 to i32
  br label %bb4

bb4:                                              ; preds = %bb32, %bb1, %bb31
  %_0.sroa.0.0 = phi i32 [ 1, %bb31 ], [ 0, %bb1 ], [ %spec.select, %bb32 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %self1.i.i.i.i1.i.i104 = load i64, ptr %anticlock_rot, align 8, !range !1031, !alias.scope !1144, !noalias !1147, !noundef !23
  %_6.i.i.i.i2.i.i105 = icmp eq i64 %self1.i.i.i.i1.i.i104, 0
  br i1 %_6.i.i.i.i2.i.i105, label %bb5, label %bb2.i.i.i3.i.i106

bb2.i.i.i3.i.i106:                                ; preds = %bb4
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_10.i.i35160167176, i64 noundef %self1.i.i.i.i1.i.i104, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1149
  br label %bb5

bb10:                                             ; preds = %bb2.i.i.i3.i.i, %cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %self1.i.i.i.i1.i.i109 = load i64, ptr %clock_rot, align 8, !range !1031, !alias.scope !1165, !noalias !1168, !noundef !23
  %_6.i.i.i.i2.i.i110 = icmp eq i64 %self1.i.i.i.i1.i.i109, 0
  br i1 %_6.i.i.i.i2.i.i110, label %bb11, label %bb2.i.i.i3.i.i111

bb2.i.i.i3.i.i111:                                ; preds = %bb10
  %self3.i.i.i.i4.i.i112 = load ptr, ptr %_20.sroa.3.0.clock_rot.sroa_idx, align 8, !alias.scope !1165, !noalias !1168, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i112, i64 noundef %self1.i.i.i.i1.i.i109, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1170
  br label %bb11

bb5:                                              ; preds = %bb2.i.i.i3.i.i106, %bb4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %anticlock_rot)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  %self1.i.i.i.i1.i.i114 = load i64, ptr %clock_rot, align 8, !range !1031, !alias.scope !1186, !noalias !1189, !noundef !23
  %_6.i.i.i.i2.i.i115 = icmp eq i64 %self1.i.i.i.i1.i.i114, 0
  br i1 %_6.i.i.i.i2.i.i115, label %bb6, label %bb2.i.i.i3.i.i116

bb2.i.i.i3.i.i116:                                ; preds = %bb5
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_10.i.i90, i64 noundef %self1.i.i.i.i1.i.i114, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1191
  br label %bb6

bb11:                                             ; preds = %bb2.i.i.i3.i.i111, %bb10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %self1.i.i.i.i1.i.i119 = load i64, ptr %str2, align 8, !range !1031, !alias.scope !1207, !noalias !1210, !noundef !23
  %_6.i.i.i.i2.i.i120 = icmp eq i64 %self1.i.i.i.i1.i.i119, 0
  br i1 %_6.i.i.i.i2.i.i120, label %bb12, label %bb2.i.i.i3.i.i121

bb2.i.i.i3.i.i121:                                ; preds = %bb11
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_26, i64 noundef %self1.i.i.i.i1.i.i119, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1212
  br label %bb12

bb6:                                              ; preds = %bb2.i.i.i3.i.i116, %bb5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %clock_rot)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  %self1.i.i.i.i1.i.i124 = load i64, ptr %str2, align 8, !range !1031, !alias.scope !1228, !noalias !1231, !noundef !23
  %_6.i.i.i.i2.i.i125 = icmp eq i64 %self1.i.i.i.i1.i.i124, 0
  br i1 %_6.i.i.i.i2.i.i125, label %bb7, label %bb2.i.i.i3.i.i126

bb2.i.i.i3.i.i126:                                ; preds = %bb6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_26, i64 noundef %self1.i.i.i.i1.i.i124, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1233
  br label %bb7

bb12:                                             ; preds = %bb2.i.i.i3.i.i121, %bb11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  %self1.i.i.i.i1.i.i129 = load i64, ptr %str1, align 8, !range !1031, !alias.scope !1249, !noalias !1252, !noundef !23
  %_6.i.i.i.i2.i.i130 = icmp eq i64 %self1.i.i.i.i1.i.i129, 0
  br i1 %_6.i.i.i.i2.i.i130, label %bb13, label %bb2.i.i.i3.i.i131

bb2.i.i.i3.i.i131:                                ; preds = %bb12
  %27 = getelementptr inbounds nuw i8, ptr %str1, i64 8
  %self3.i.i.i.i4.i.i132 = load ptr, ptr %27, align 8, !alias.scope !1249, !noalias !1252, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i132, i64 noundef %self1.i.i.i.i1.i.i129, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1254
  br label %bb13

bb7:                                              ; preds = %bb2.i.i.i3.i.i126, %bb6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %self1.i.i.i.i1.i.i134 = load i64, ptr %str1, align 8, !range !1031, !alias.scope !1270, !noalias !1273, !noundef !23
  %_6.i.i.i.i2.i.i135 = icmp eq i64 %self1.i.i.i.i1.i.i134, 0
  br i1 %_6.i.i.i.i2.i.i135, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h89223ae69590377bE.exit138", label %bb2.i.i.i3.i.i136

bb2.i.i.i3.i.i136:                                ; preds = %bb7
  %28 = getelementptr inbounds nuw i8, ptr %str1, i64 8
  %self3.i.i.i.i4.i.i137 = load ptr, ptr %28, align 8, !alias.scope !1270, !noalias !1273, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i137, i64 noundef %self1.i.i.i.i1.i.i134, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1275
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h89223ae69590377bE.exit138"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h89223ae69590377bE.exit138": ; preds = %bb7, %bb2.i.i.i3.i.i136
  ret i32 %_0.sroa.0.0

bb13:                                             ; preds = %bb2.i.i.i3.i.i131, %bb12
  resume { ptr, i32 } %4
}
