define noundef range(i32 0, 1114112) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i = load ptr, ptr %0, align 8, !alias.scope !1630, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %len.i.i = load i64, ptr %1, align 8, !alias.scope !1630, !noundef !37
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  br label %bb4

cleanup:                                          ; preds = %bb4.i
  %2 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e7b67456ebc36c1E"(ptr noalias noundef align 8 dereferenceable(24) %str) #27
          to label %common.resume unwind label %terminate

bb4:                                              ; preds = %bb4.backedge, %start
  %iter.sroa.0.0 = phi ptr [ %_6.i.i, %start ], [ %iter.sroa.0.2, %bb4.backedge ]
  %_7.i.i.i = icmp ne ptr %iter.sroa.0.0, %_7.i
  %spec.select.idx = zext i1 %_7.i.i.i to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0, i64 %spec.select.idx
  br i1 %_7.i.i.i, label %bb14.i.i, label %bb5

bb14.i.i:                                         ; preds = %bb4
  %x.i.i = load i8, ptr %iter.sroa.0.0, align 1, !noalias !1635, !noundef !37
  %_6.i.i3 = icmp sgt i8 %x.i.i, -1
  br i1 %_6.i.i3, label %bb3.i.i, label %bb4.i.i

bb4.i.i:                                          ; preds = %bb14.i.i
  %_30.i.i = and i8 %x.i.i, 31
  %init.i.i = zext nneg i8 %_30.i.i to i32
  %_7.i10.i.i = icmp ne ptr %spec.select, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i)
  %_18.i12.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %y.i.i = load i8, ptr %spec.select, align 1, !noalias !1635, !noundef !37
  %_34.i.i = shl nuw nsw i32 %init.i.i, 6
  %_36.i.i = and i8 %y.i.i, 63
  %_35.i.i = zext nneg i8 %_36.i.i to i32
  %3 = or disjoint i32 %_34.i.i, %_35.i.i
  %_13.i.i = icmp ugt i8 %x.i.i, -33
  br i1 %_13.i.i, label %bb6.i.i, label %bb5

bb3.i.i:                                          ; preds = %bb14.i.i
  %_7.i.i = zext nneg i8 %x.i.i to i32
  br label %bb5

bb6.i.i:                                          ; preds = %bb4.i.i
  %_7.i17.i.i = icmp ne ptr %_18.i12.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i)
  %_18.i19.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %z.i.i = load i8, ptr %_18.i12.i.i, align 1, !noalias !1635, !noundef !37
  %_40.i.i = shl nuw nsw i32 %_35.i.i, 6
  %_42.i.i = and i8 %z.i.i, 63
  %_41.i.i = zext nneg i8 %_42.i.i to i32
  %y_z.i.i = or disjoint i32 %_40.i.i, %_41.i.i
  %_20.i.i = shl nuw nsw i32 %init.i.i, 12
  %4 = or disjoint i32 %y_z.i.i, %_20.i.i
  %_21.i.i = icmp ugt i8 %x.i.i, -17
  br i1 %_21.i.i, label %bb8.i.i, label %bb5

bb8.i.i:                                          ; preds = %bb6.i.i
  %_7.i24.i.i = icmp ne ptr %_18.i19.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i)
  %_18.i26.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  %w.i.i = load i8, ptr %_18.i19.i.i, align 1, !noalias !1635, !noundef !37
  %_26.i.i = shl nuw nsw i32 %init.i.i, 18
  %_25.i.i = and i32 %_26.i.i, 1835008
  %_46.i.i = shl nuw nsw i32 %y_z.i.i, 6
  %_48.i.i = and i8 %w.i.i, 63
  %_47.i.i = zext nneg i8 %_48.i.i to i32
  %_27.i.i = or disjoint i32 %_46.i.i, %_47.i.i
  %5 = or disjoint i32 %_27.i.i, %_25.i.i
  br label %bb5

bb5:                                              ; preds = %bb8.i.i, %bb6.i.i, %bb3.i.i, %bb4.i.i, %bb4
  %iter.sroa.0.2 = phi ptr [ %spec.select, %bb4 ], [ %spec.select, %bb3.i.i ], [ %_18.i26.i.i, %bb8.i.i ], [ %_18.i19.i.i, %bb6.i.i ], [ %_18.i12.i.i, %bb4.i.i ]
  %spec.select.i = phi i32 [ 1114112, %bb4 ], [ %_7.i.i, %bb3.i.i ], [ %5, %bb8.i.i ], [ %4, %bb6.i.i ], [ %3, %bb4.i.i ]
  %.not = icmp eq i32 %spec.select.i, 1114112
  br i1 %.not, label %bb8, label %bb7

bb7:                                              ; preds = %bb5
  %6 = add nsw i32 %spec.select.i, -65
  %or.cond.i = icmp ult i32 %6, 26
  br i1 %or.cond.i, label %bb10, label %bb1.i

bb1.i:                                            ; preds = %bb7
  %_4.i = icmp samesign ugt i32 %spec.select.i, 127
  br i1 %_4.i, label %bb4.i, label %bb4.backedge

bb4.i:                                            ; preds = %bb1.i
; invoke core::unicode::unicode_data::uppercase::lookup
  %7 = invoke noundef zeroext i1 @_ZN4core7unicode12unicode_data9uppercase6lookup17h357c9c1057b36eafE(i32 noundef range(i32 0, 1114112) %spec.select.i)
          to label %bb9 unwind label %cleanup

bb8:                                              ; preds = %bb5
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %bb12 unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb8
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

common.resume:                                    ; preds = %cleanup, %cleanup.i.i4, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %8, %cleanup.i.i ], [ %10, %cleanup.i.i4 ], [ %2, %cleanup ]
  resume { ptr, i32 } %common.resume.op

bb12:                                             ; preds = %bb8, %bb10
  %c.sroa.0.0 = phi i32 [ %spec.select.i, %bb10 ], [ 0, %bb8 ]
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %c.sroa.0.0

bb9:                                              ; preds = %bb4.i
  br i1 %7, label %bb10, label %bb4.backedge

bb4.backedge:                                     ; preds = %bb9, %bb1.i
  br label %bb4

bb10:                                             ; preds = %bb7, %bb9
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %bb12 unwind label %cleanup.i.i4

cleanup.i.i4:                                     ; preds = %bb10
  %10 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i5

terminate.i.i5:                                   ; preds = %cleanup.i.i4
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23
  unreachable

terminate:                                        ; preds = %cleanup
  %12 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23
  unreachable
}
