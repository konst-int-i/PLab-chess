#Makefile for chess executable program

OBJ = ChessMain.o ChessBoard.o King.o Queen.o Rook.o Bishop.o Knight.o Pawn.o

EXE = chess
CXX = g++
CXXFLAGS = -Wall -g -MMD

$(EXE):$(OBJ)
	$(CXX) $(OBJ) -o $@


	%.o: %.cpp
		$(CXX) $(CXXFLAGS) -c $< -o $@

	-include $(OBJ:.o=.d)

	.PHONY: clean

	clean:
		rm -f $(OBJ) $(EXE) $(OBJ:.o=.d)
