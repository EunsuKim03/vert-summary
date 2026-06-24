define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %s) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1630, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_0.i.i.i60.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i60.not, label %bb7, label %bb9.preheader.lr.ph

bb9.preheader.lr.ph:                              ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_8.i = load ptr, ptr %1, align 8, !alias.scope !1633, !noalias !1636, !nonnull !37, !noundef !37
  br label %bb9.preheader

cleanup:                                          ; preds = %bb3.i.i26.invoke
  %2 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h928a35790b52e802E"(ptr noalias noundef align 8 dereferenceable(24) %s) #27
          to label %common.resume unwind label %terminate

bb3.loopexit:                                     ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2241b1b722366a15E.exit41"
  %_0.i.i.i = icmp ult i64 %spec.select4264, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select42 = add nuw i64 %spec.select4264, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb9.preheader, label %bb7

bb9.preheader:                                    ; preds = %bb9.preheader.lr.ph, %bb3.loopexit
  %spec.select4264 = phi i64 [ 1, %bb9.preheader.lr.ph ], [ %spec.select42, %bb3.loopexit ]
  %result.sroa.0.063 = phi i32 [ 0, %bb9.preheader.lr.ph ], [ %spec.select, %bb3.loopexit ]
  %iter.sroa.0.062 = phi i64 [ 0, %bb9.preheader.lr.ph ], [ %spec.select4264, %bb3.loopexit ]
  %spec.select4456 = add nuw nsw i64 %iter.sroa.0.062, 1
  %_22 = add nuw nsw i64 %iter.sroa.0.062, 1
  %3 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter.sroa.0.062
  %_19.not.i.i.i = icmp ult i64 %_22, %_0.i
  %4 = icmp eq i64 %_22, %_0.i
  %5 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_22
  %data.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter.sroa.0.062
  br label %bb11

bb7:                                              ; preds = %bb3.loopexit, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %spec.select, %bb3.loopexit ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h928a35790b52e802E.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb7
  %6 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23
  unreachable

common.resume:                                    ; preds = %cleanup, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %6, %cleanup.i.i ], [ %2, %cleanup ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h928a35790b52e802E.exit": ; preds = %bb7
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
  ret i32 %result.sroa.0.0.lcssa

bb11:                                             ; preds = %bb9.preheader, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2241b1b722366a15E.exit41"
  %spec.select4459 = phi i64 [ %spec.select4456, %bb9.preheader ], [ %spec.select44, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2241b1b722366a15E.exit41" ]
  %result.sroa.0.158 = phi i32 [ %result.sroa.0.063, %bb9.preheader ], [ %spec.select, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2241b1b722366a15E.exit41" ]
  %iter1.sroa.0.057 = phi i64 [ %iter.sroa.0.062, %bb9.preheader ], [ %spec.select4459, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2241b1b722366a15E.exit41" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  switch i64 %iter.sroa.0.062, label %bb12.i.i.i [
    i64 -1, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
    i64 0, label %bb15.i.i.i
  ]

bb12.i.i.i:                                       ; preds = %bb11
  %self.i.i.i = load i8, ptr %3, align 1, !alias.scope !1638, !noalias !1643, !noundef !37
  %8 = icmp sgt i8 %self.i.i.i, -65
  br i1 %8, label %bb15.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

bb15.i.i.i:                                       ; preds = %bb12.i.i.i, %bb11
  br i1 %_19.not.i.i.i, label %bb18.i.i.i, label %bb19.i.i.i

bb18.i.i.i:                                       ; preds = %bb15.i.i.i
  %self2.i.i.i = load i8, ptr %5, align 1, !alias.scope !1638, !noalias !1643, !noundef !37
  %9 = icmp sgt i8 %self2.i.i.i, -65
  br label %bb19.i.i.i

bb19.i.i.i:                                       ; preds = %bb15.i.i.i, %bb18.i.i.i
  %_7.sroa.0.0.in.i.i.i = phi i1 [ %9, %bb18.i.i.i ], [ %4, %bb15.i.i.i ]
  %spec.select72 = select i1 %_7.sroa.0.0.in.i.i.i, ptr %data.i.i.i, ptr null
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i": ; preds = %bb19.i.i.i, %bb11, %bb12.i.i.i
  %_0.sroa.0.0.i.i.i = phi ptr [ null, %bb12.i.i.i ], [ null, %bb11 ], [ %spec.select72, %bb19.i.i.i ]
  %.not.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %bb3.i.i26.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2241b1b722366a15E.exit", !prof !1033

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2241b1b722366a15E.exit": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
  %_26 = add nuw nsw i64 %iter1.sroa.0.057, 1
  switch i64 %iter1.sroa.0.057, label %bb12.i.i.i38 [
    i64 -1, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23"
    i64 0, label %bb15.i.i.i29
  ]

bb12.i.i.i38:                                     ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2241b1b722366a15E.exit"
  %10 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter1.sroa.0.057
  %self.i.i.i39 = load i8, ptr %10, align 1, !alias.scope !1645, !noalias !1650, !noundef !37
  %11 = icmp sgt i8 %self.i.i.i39, -65
  br i1 %11, label %bb15.i.i.i29, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23"

bb15.i.i.i29:                                     ; preds = %bb12.i.i.i38, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2241b1b722366a15E.exit"
  %_19.not.i.i.i30 = icmp ult i64 %_26, %_0.i
  br i1 %_19.not.i.i.i30, label %bb18.i.i.i36, label %bb16.i.i.i31

bb16.i.i.i31:                                     ; preds = %bb15.i.i.i29
  %12 = icmp eq i64 %_26, %_0.i
  br label %bb19.i.i.i32

bb18.i.i.i36:                                     ; preds = %bb15.i.i.i29
  %13 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_26
  %self2.i.i.i37 = load i8, ptr %13, align 1, !alias.scope !1645, !noalias !1650, !noundef !37
  %14 = icmp sgt i8 %self2.i.i.i37, -65
  br label %bb19.i.i.i32

bb19.i.i.i32:                                     ; preds = %bb18.i.i.i36, %bb16.i.i.i31
  %_7.sroa.0.0.in.i.i.i33 = phi i1 [ %12, %bb16.i.i.i31 ], [ %14, %bb18.i.i.i36 ]
  %data.i.i.i35 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter1.sroa.0.057
  %spec.select73 = select i1 %_7.sroa.0.0.in.i.i.i33, ptr %data.i.i.i35, ptr null
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23": ; preds = %bb19.i.i.i32, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2241b1b722366a15E.exit", %bb12.i.i.i38
  %_0.sroa.0.0.i.i.i24 = phi ptr [ null, %bb12.i.i.i38 ], [ null, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2241b1b722366a15E.exit" ], [ %spec.select73, %bb19.i.i.i32 ]
  %.not.i.i25 = icmp eq ptr %_0.sroa.0.0.i.i.i24, null
  br i1 %.not.i.i25, label %bb3.i.i26.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2241b1b722366a15E.exit41", !prof !1033

bb3.i.i26.invoke:                                 ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23", %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
  %15 = phi i64 [ %iter.sroa.0.062, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ], [ %iter1.sroa.0.057, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23" ]
  %16 = phi i64 [ %_22, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ], [ %_26, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23" ]
  %17 = phi ptr [ @alloc_14a7387d30e9abb0ad6712e3f36724b8, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ], [ @alloc_298ce3af6bd84e2d4444a31b53f3dca8, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23" ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_8.i, i64 noundef %_0.i, i64 noundef %15, i64 noundef %16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %17) #24
          to label %bb3.i.i26.cont unwind label %cleanup

bb3.i.i26.cont:                                   ; preds = %bb3.i.i26.invoke
  unreachable

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2241b1b722366a15E.exit41": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23"
  %lhsc = load i8, ptr %_0.sroa.0.0.i.i.i, align 1
  %rhsc = load i8, ptr %_0.sroa.0.0.i.i.i24, align 1
  %18 = icmp eq i8 %lhsc, %rhsc
  %19 = zext i1 %18 to i32
  %spec.select = add i32 %result.sroa.0.158, %19
  %_0.i.i.i8 = icmp ult i64 %spec.select4459, %_0.i
  %_0.i1.i.i11 = zext i1 %_0.i.i.i8 to i64
  %spec.select44 = add nuw i64 %spec.select4459, %_0.i1.i.i11
  br i1 %_0.i.i.i8, label %bb11, label %bb3.loopexit

terminate:                                        ; preds = %cleanup
  %20 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23
  unreachable
}
