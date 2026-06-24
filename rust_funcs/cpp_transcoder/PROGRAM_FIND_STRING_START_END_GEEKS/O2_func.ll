define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %corner) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %n = load i64, ptr %0, align 8, !noundef !23
  %_17 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_17)
  %1 = getelementptr inbounds nuw i8, ptr %corner, i64 16
  %cl = load i64, ptr %1, align 8, !noundef !23
  %_18 = icmp sgt i64 %cl, -1
  tail call void @llvm.assume(i1 %_18)
  %_5 = icmp samesign ult i64 %n, %cl
  br i1 %_5, label %bb9, label %bb2

bb2:                                              ; preds = %start
  %2 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_23 = load ptr, ptr %2, align 8, !nonnull !23, !noundef !23
  %_18.i = icmp eq i64 %cl, 0
  br i1 %_18.i, label %bb22, label %bb15.i

bb15.i:                                           ; preds = %bb2
  %_19.not.i = icmp samesign ult i64 %cl, %n
  br i1 %_19.not.i, label %bb19.i, label %bb5.i.i.i

bb19.i:                                           ; preds = %bb15.i
  %3 = getelementptr inbounds nuw i8, ptr %_23, i64 %cl
  %self2.i = load i8, ptr %3, align 1, !alias.scope !1031, !noundef !23
  %4 = icmp sgt i8 %self2.i, -65
  br i1 %4, label %bb5.i.i.i, label %bb24.invoke

bb2.i.i.i3.i.i:                                   ; preds = %cleanup
  %5 = getelementptr inbounds nuw i8, ptr %corner, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %5, align 8, !alias.scope !1034, !noalias !1047, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1049
  br label %bb15

cleanup:                                          ; preds = %bb24.invoke, %bb3.i.i39.invoke
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %self1.i.i.i.i1.i.i = load i64, ptr %corner, align 8, !range !1055, !alias.scope !1034, !noalias !1047, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb15, label %bb2.i.i.i3.i.i

bb5.i.i.i:                                        ; preds = %bb15.i, %bb19.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1056
; call __rustc::__rust_alloc
  %7 = tail call noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) %cl, i64 noundef range(i64 1, 5) 1) #19, !noalias !1056
  %8 = icmp eq ptr %7, null
  br i1 %8, label %bb3.i.i39.invoke, label %bb22

bb22:                                             ; preds = %bb2, %bb5.i.i.i
  %_4.sroa.10.0.i.i = phi ptr [ %7, %bb5.i.i.i ], [ inttoptr (i64 1 to ptr), %bb2 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %_4.sroa.10.0.i.i, ptr nonnull readonly align 1 %_23, i64 range(i64 0, -9223372036854775808) %cl, i1 false), !noalias !1062
  %9 = getelementptr inbounds nuw i8, ptr %corner, i64 8
  %_14.i = load ptr, ptr %9, align 8, !alias.scope !1063, !noalias !1066, !nonnull !23, !noundef !23
  %bcmp = tail call i32 @bcmp(ptr nonnull %_4.sroa.10.0.i.i, ptr nonnull %_14.i, i64 %cl)
  %_7 = icmp eq i32 %bcmp, 0
  br i1 %_7, label %bb3, label %bb5

bb5:                                              ; preds = %bb22
  br i1 %_18.i, label %bb9, label %bb2.i.i.i3.i.i18

bb2.i.i.i3.i.i18:                                 ; preds = %bb5
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i, i64 noundef %cl, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1068
  br label %bb9

bb3:                                              ; preds = %bb22
  br i1 %_18.i, label %bb4, label %bb2.i.i.i3.i.i23

bb2.i.i.i3.i.i23:                                 ; preds = %bb3
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i, i64 noundef %cl, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1079
  br label %bb4

bb4:                                              ; preds = %bb2.i.i.i3.i.i23, %bb3
  %_16 = sub nsw i64 %n, %cl
  %_11.i = icmp eq i64 %n, %cl
  br i1 %_11.i, label %bb25, label %bb9.i

bb9.i:                                            ; preds = %bb4
  %_12.not.i = icmp samesign ult i64 %_16, %n
  br i1 %_12.not.i, label %bb13.i, label %bb10.i

bb10.i:                                           ; preds = %bb9.i
  br i1 %_18.i, label %bb25.thread, label %bb24.invoke

bb25.thread:                                      ; preds = %bb10.i
  %data.i81 = getelementptr inbounds nuw i8, ptr %_23, i64 %_16
  br label %bb27.thread

bb13.i:                                           ; preds = %bb9.i
  %10 = getelementptr inbounds nuw i8, ptr %_23, i64 %_16
  %self.i = load i8, ptr %10, align 1, !alias.scope !1090, !noundef !23
  %11 = icmp sgt i8 %self.i, -65
  br i1 %11, label %bb25, label %bb24.invoke

bb25:                                             ; preds = %bb4, %bb13.i
  %data.i = getelementptr inbounds nuw i8, ptr %_23, i64 %_16
  br i1 %_18.i, label %bb27.thread, label %bb5.i.i.i37

bb5.i.i.i37:                                      ; preds = %bb25
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1093
; call __rustc::__rust_alloc
  %12 = tail call noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) %cl, i64 noundef range(i64 1, 5) 1) #19, !noalias !1093
  %13 = icmp eq ptr %12, null
  br i1 %13, label %bb3.i.i39.invoke, label %bb2.i.i.i3.i.i57

bb3.i.i39.invoke:                                 ; preds = %bb5.i.i.i37, %bb5.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %cl) #20
          to label %bb3.i.i39.cont unwind label %cleanup

bb3.i.i39.cont:                                   ; preds = %bb3.i.i39.invoke
  unreachable

bb24.invoke:                                      ; preds = %bb10.i, %bb13.i, %bb19.i
  %14 = phi i64 [ 0, %bb19.i ], [ %_16, %bb13.i ], [ %_16, %bb10.i ]
  %15 = phi i64 [ %cl, %bb19.i ], [ %n, %bb13.i ], [ %n, %bb10.i ]
  %16 = phi ptr [ @alloc_464163c4931dffbbf2f64995a909f071, %bb19.i ], [ @alloc_62a8386542c978de5e962f01dc49365f, %bb13.i ], [ @alloc_62a8386542c978de5e962f01dc49365f, %bb10.i ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_23, i64 noundef %n, i64 noundef %14, i64 noundef %15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %16) #20
          to label %bb24.cont unwind label %cleanup

bb24.cont:                                        ; preds = %bb24.invoke
  unreachable

bb27.thread:                                      ; preds = %bb25.thread, %bb25
  %data.i82.ph = phi ptr [ %data.i81, %bb25.thread ], [ %data.i, %bb25 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 inttoptr (i64 1 to ptr), ptr nonnull readonly align 1 %data.i82.ph, i64 range(i64 0, -9223372036854775808) %cl, i1 false), !noalias !1099
  %bcmp8085 = tail call i32 @bcmp(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull %_14.i, i64 %cl)
  br label %bb7

bb2.i.i.i3.i.i57:                                 ; preds = %bb5.i.i.i37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %12, ptr nonnull readonly align 1 %data.i, i64 range(i64 0, -9223372036854775808) %cl, i1 false), !noalias !1099
  %bcmp80 = tail call i32 @bcmp(ptr nonnull %12, ptr nonnull %_14.i, i64 %cl)
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %12, i64 noundef %cl, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1100
  br label %bb7

bb7:                                              ; preds = %bb27.thread, %bb2.i.i.i3.i.i57
  %bcmp8086 = phi i32 [ %bcmp8085, %bb27.thread ], [ %bcmp80, %bb2.i.i.i3.i.i57 ]
  %17 = icmp eq i32 %bcmp8086, 0
  %18 = zext i1 %17 to i32
  br label %bb9

bb9:                                              ; preds = %bb5, %bb2.i.i.i3.i.i18, %bb7, %start
  %_0.sroa.0.0 = phi i32 [ 0, %start ], [ %18, %bb7 ], [ 0, %bb2.i.i.i3.i.i18 ], [ 0, %bb5 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  %self1.i.i.i.i1.i.i60 = load i64, ptr %corner, align 8, !range !1055, !alias.scope !1126, !noalias !1129, !noundef !23
  %_6.i.i.i.i2.i.i61 = icmp eq i64 %self1.i.i.i.i1.i.i60, 0
  br i1 %_6.i.i.i.i2.i.i61, label %bb10, label %bb2.i.i.i3.i.i62

bb2.i.i.i3.i.i62:                                 ; preds = %bb9
  %19 = getelementptr inbounds nuw i8, ptr %corner, i64 8
  %self3.i.i.i.i4.i.i63 = load ptr, ptr %19, align 8, !alias.scope !1126, !noalias !1129, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i63, i64 noundef %self1.i.i.i.i1.i.i60, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1131
  br label %bb10

bb15:                                             ; preds = %bb2.i.i.i3.i.i, %cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %self1.i.i.i.i1.i.i65 = load i64, ptr %str, align 8, !range !1055, !alias.scope !1147, !noalias !1150, !noundef !23
  %_6.i.i.i.i2.i.i66 = icmp eq i64 %self1.i.i.i.i1.i.i65, 0
  br i1 %_6.i.i.i.i2.i.i66, label %bb16, label %bb2.i.i.i3.i.i67

bb2.i.i.i3.i.i67:                                 ; preds = %bb15
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_23, i64 noundef %self1.i.i.i.i1.i.i65, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1152
  br label %bb16

bb10:                                             ; preds = %bb2.i.i.i3.i.i62, %bb9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  %self1.i.i.i.i1.i.i70 = load i64, ptr %str, align 8, !range !1055, !alias.scope !1168, !noalias !1171, !noundef !23
  %_6.i.i.i.i2.i.i71 = icmp eq i64 %self1.i.i.i.i1.i.i70, 0
  br i1 %_6.i.i.i.i2.i.i71, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he9cd0f6758d2587aE.exit74", label %bb2.i.i.i3.i.i72

bb2.i.i.i3.i.i72:                                 ; preds = %bb10
  %20 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i73 = load ptr, ptr %20, align 8, !alias.scope !1168, !noalias !1171, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i73, i64 noundef %self1.i.i.i.i1.i.i70, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1173
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he9cd0f6758d2587aE.exit74"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he9cd0f6758d2587aE.exit74": ; preds = %bb10, %bb2.i.i.i3.i.i72
  ret i32 %_0.sroa.0.0

bb16:                                             ; preds = %bb2.i.i.i3.i.i67, %bb15
  resume { ptr, i32 } %6
}
