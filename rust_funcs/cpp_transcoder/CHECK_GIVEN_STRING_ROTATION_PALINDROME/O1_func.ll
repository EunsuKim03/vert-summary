define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1630, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_8.i = load ptr, ptr %1, align 8, !nonnull !37
  %h.sroa.0.0.peel = add nsw i64 %_0.i, -1
  %_6.peel.not = icmp eq i64 %h.sroa.0.0.peel, 0
  br i1 %_6.peel.not, label %bb9, label %bb15.i.i.i.peel

bb15.i.i.i.peel:                                  ; preds = %start
  %_19.not.i.i.i.peel = icmp samesign ugt i64 %_0.i, 1
  br i1 %_19.not.i.i.i.peel, label %bb18.i.i.i.peel, label %bb16.i.i.i.peel

bb16.i.i.i.peel:                                  ; preds = %bb15.i.i.i.peel
  %2 = icmp eq i64 %_0.i, 1
  br label %bb19.i.i.i.peel

bb18.i.i.i.peel:                                  ; preds = %bb15.i.i.i.peel
  %3 = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  %self2.i.i.i.peel = load i8, ptr %3, align 1, !alias.scope !1633, !noalias !1638, !noundef !37
  %4 = icmp sgt i8 %self2.i.i.i.peel, -65
  br label %bb19.i.i.i.peel

bb19.i.i.i.peel:                                  ; preds = %bb18.i.i.i.peel, %bb16.i.i.i.peel
  %_7.sroa.0.0.in.i.i.i.peel = phi i1 [ %2, %bb16.i.i.i.peel ], [ %4, %bb18.i.i.i.peel ]
  br i1 %_7.sroa.0.0.in.i.i.i.peel, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E.exit.peel", label %bb3.i.i20.invoke, !prof !1643

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E.exit.peel": ; preds = %bb19.i.i.i.peel
  %_3.not.i.i.i9.peel = icmp eq i64 %_0.i, 0
  br i1 %_3.not.i.i.i9.peel, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i17.peel", label %bb12.i.i.i32.peel

bb12.i.i.i32.peel:                                ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E.exit.peel"
  %5 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %h.sroa.0.0.peel
  %self.i.i.i33.peel = load i8, ptr %5, align 1, !alias.scope !1644, !noalias !1649, !noundef !37
  %6 = icmp sgt i8 %self.i.i.i33.peel, -65
  %data.i.i.i29.peel = getelementptr inbounds nuw i8, ptr %_8.i, i64 %h.sroa.0.0.peel
  %spec.select68 = select i1 %6, ptr %data.i.i.i29.peel, ptr null
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i17.peel"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i17.peel": ; preds = %bb12.i.i.i32.peel, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E.exit.peel"
  %_0.sroa.0.0.i.i.i18.peel = phi ptr [ null, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E.exit.peel" ], [ %spec.select68, %bb12.i.i.i32.peel ]
  %.not.i.i19.peel = icmp eq ptr %_0.sroa.0.0.i.i.i18.peel, null
  br i1 %.not.i.i19.peel, label %bb3.i.i20.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E.exit35.peel", !prof !1654

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E.exit35.peel": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i17.peel"
  %lhsc.peel = load i8, ptr %_8.i, align 1
  %rhsc.peel = load i8, ptr %_0.sroa.0.0.i.i.i18.peel, align 1
  %.not.peel = icmp eq i8 %lhsc.peel, %rhsc.peel
  br i1 %.not.peel, label %bb2, label %bb7

cleanup:                                          ; preds = %bb3.i.i20.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa4c500212113a3bE"(ptr noalias noundef align 8 dereferenceable(24) %str) #27
          to label %common.resume unwind label %terminate

bb2:                                              ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E.exit35.peel", %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E.exit35"
  %h.sroa.0.0.in = phi i64 [ %h.sroa.0.0, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E.exit35" ], [ %h.sroa.0.0.peel, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E.exit35.peel" ]
  %l.sroa.0.0 = phi i64 [ %_14, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E.exit35" ], [ 1, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E.exit35.peel" ]
  %h.sroa.0.0 = add i64 %h.sroa.0.0.in, -1
  %_6 = icmp ugt i64 %h.sroa.0.0, %l.sroa.0.0
  br i1 %_6, label %bb3, label %bb9

bb9:                                              ; preds = %bb2, %start
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %bb10 unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb9
  %8 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %9 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23
  unreachable

common.resume:                                    ; preds = %cleanup, %cleanup.i.i37, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %8, %cleanup.i.i ], [ %25, %cleanup.i.i37 ], [ %7, %cleanup ]
  resume { ptr, i32 } %common.resume.op

bb3:                                              ; preds = %bb2
  %_14 = add nuw i64 %l.sroa.0.0, 1
  %_12.not.i.i.i = icmp ult i64 %l.sroa.0.0, %_0.i
  br i1 %_12.not.i.i.i, label %bb12.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb3
  %10 = icmp eq i64 %l.sroa.0.0, %_0.i
  br label %bb13.i.i.i

bb12.i.i.i:                                       ; preds = %bb3
  %11 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %l.sroa.0.0
  %self.i.i.i = load i8, ptr %11, align 1, !alias.scope !1633, !noalias !1638, !noundef !37
  %12 = icmp sgt i8 %self.i.i.i, -65
  br label %bb13.i.i.i

bb13.i.i.i:                                       ; preds = %bb12.i.i.i, %bb10.i.i.i
  %_6.sroa.0.0.in.i.i.i = phi i1 [ %10, %bb10.i.i.i ], [ %12, %bb12.i.i.i ]
  br i1 %_6.sroa.0.0.in.i.i.i, label %bb15.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

bb15.i.i.i:                                       ; preds = %bb13.i.i.i
  %_19.not.i.i.i = icmp ult i64 %_14, %_0.i
  br i1 %_19.not.i.i.i, label %bb18.i.i.i, label %bb16.i.i.i

bb16.i.i.i:                                       ; preds = %bb15.i.i.i
  %13 = icmp eq i64 %_14, %_0.i
  br label %bb19.i.i.i

bb18.i.i.i:                                       ; preds = %bb15.i.i.i
  %14 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_14
  %self2.i.i.i = load i8, ptr %14, align 1, !alias.scope !1633, !noalias !1638, !noundef !37
  %15 = icmp sgt i8 %self2.i.i.i, -65
  br label %bb19.i.i.i

bb19.i.i.i:                                       ; preds = %bb18.i.i.i, %bb16.i.i.i
  %_7.sroa.0.0.in.i.i.i = phi i1 [ %13, %bb16.i.i.i ], [ %15, %bb18.i.i.i ]
  %data.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 %l.sroa.0.0
  %spec.select67 = select i1 %_7.sroa.0.0.in.i.i.i, ptr %data.i.i.i, ptr null
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i": ; preds = %bb19.i.i.i, %bb13.i.i.i
  %_0.sroa.0.0.i.i.i = phi ptr [ null, %bb13.i.i.i ], [ %spec.select67, %bb19.i.i.i ]
  %.not.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %bb3.i.i20.invoke, label %bb9.i.i.i12, !prof !1655

bb10:                                             ; preds = %bb9, %bb7
  %_0.sroa.0.0 = phi i32 [ 0, %bb7 ], [ 1, %bb9 ]
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %_0.sroa.0.0

bb9.i.i.i12:                                      ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
  %_12.not.i.i.i13 = icmp ult i64 %h.sroa.0.0, %_0.i
  br i1 %_12.not.i.i.i13, label %bb12.i.i.i32, label %bb10.i.i.i14

bb10.i.i.i14:                                     ; preds = %bb9.i.i.i12
  %16 = icmp eq i64 %h.sroa.0.0, %_0.i
  br label %bb13.i.i.i15

bb12.i.i.i32:                                     ; preds = %bb9.i.i.i12
  %17 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %h.sroa.0.0
  %self.i.i.i33 = load i8, ptr %17, align 1, !alias.scope !1644, !noalias !1649, !noundef !37
  %18 = icmp sgt i8 %self.i.i.i33, -65
  br label %bb13.i.i.i15

bb13.i.i.i15:                                     ; preds = %bb12.i.i.i32, %bb10.i.i.i14
  %_6.sroa.0.0.in.i.i.i16 = phi i1 [ %16, %bb10.i.i.i14 ], [ %18, %bb12.i.i.i32 ]
  br i1 %_6.sroa.0.0.in.i.i.i16, label %bb15.i.i.i23, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i17"

bb15.i.i.i23:                                     ; preds = %bb13.i.i.i15
  %_19.not.i.i.i24 = icmp ult i64 %h.sroa.0.0.in, %_0.i
  br i1 %_19.not.i.i.i24, label %bb18.i.i.i30, label %bb16.i.i.i25

bb16.i.i.i25:                                     ; preds = %bb15.i.i.i23
  %19 = icmp eq i64 %h.sroa.0.0.in, %_0.i
  br label %bb19.i.i.i26

bb18.i.i.i30:                                     ; preds = %bb15.i.i.i23
  %20 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %h.sroa.0.0.in
  %self2.i.i.i31 = load i8, ptr %20, align 1, !alias.scope !1644, !noalias !1649, !noundef !37
  %21 = icmp sgt i8 %self2.i.i.i31, -65
  br label %bb19.i.i.i26

bb19.i.i.i26:                                     ; preds = %bb18.i.i.i30, %bb16.i.i.i25
  %_7.sroa.0.0.in.i.i.i27 = phi i1 [ %19, %bb16.i.i.i25 ], [ %21, %bb18.i.i.i30 ]
  %data.i.i.i29 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %h.sroa.0.0
  %spec.select = select i1 %_7.sroa.0.0.in.i.i.i27, ptr %data.i.i.i29, ptr null
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i17"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i17": ; preds = %bb19.i.i.i26, %bb13.i.i.i15
  %_0.sroa.0.0.i.i.i18 = phi ptr [ null, %bb13.i.i.i15 ], [ %spec.select, %bb19.i.i.i26 ]
  %.not.i.i19 = icmp eq ptr %_0.sroa.0.0.i.i.i18, null
  br i1 %.not.i.i19, label %bb3.i.i20.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E.exit35", !prof !1655

bb3.i.i20.invoke:                                 ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i17", %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i", %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i17.peel", %bb19.i.i.i.peel
  %22 = phi i64 [ 0, %bb19.i.i.i.peel ], [ %h.sroa.0.0.peel, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i17.peel" ], [ %h.sroa.0.0, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i17" ], [ %l.sroa.0.0, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
  %23 = phi i64 [ 1, %bb19.i.i.i.peel ], [ %_0.i, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i17.peel" ], [ %h.sroa.0.0.in, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i17" ], [ %_14, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
  %24 = phi ptr [ @alloc_be4ff25744a098ef6862f9b219d2b236, %bb19.i.i.i.peel ], [ @alloc_28bf169b2b1ae354b308a2401d0a45e3, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i17.peel" ], [ @alloc_28bf169b2b1ae354b308a2401d0a45e3, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i17" ], [ @alloc_be4ff25744a098ef6862f9b219d2b236, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_8.i, i64 noundef %_0.i, i64 noundef %22, i64 noundef %23, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %24) #24
          to label %bb3.i.i20.cont unwind label %cleanup

bb3.i.i20.cont:                                   ; preds = %bb3.i.i20.invoke
  unreachable

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E.exit35": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i17"
  %lhsc = load i8, ptr %_0.sroa.0.0.i.i.i, align 1
  %rhsc = load i8, ptr %_0.sroa.0.0.i.i.i18, align 1
  %.not = icmp eq i8 %lhsc, %rhsc
  br i1 %.not, label %bb2, label %bb7, !llvm.loop !1656

bb7:                                              ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E.exit35", %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E.exit35.peel"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %bb10 unwind label %cleanup.i.i37

cleanup.i.i37:                                    ; preds = %bb7
  %25 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i38

terminate.i.i38:                                  ; preds = %cleanup.i.i37
  %26 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23
  unreachable

terminate:                                        ; preds = %cleanup
  %27 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23
  unreachable
}
