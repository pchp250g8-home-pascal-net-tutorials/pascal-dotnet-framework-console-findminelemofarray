uses
  System;
begin
  var oRnd := New Random();
	Console.WriteLine('Input a count of elements:');
	var nElems : integer;
	integer.TryParse(Console.ReadLine(), nElems);
	if nElems = 0 then
  begin
		Console.WriteLine('Empty arrays not allowed');
		Console.Read();
		exit;
	end;
	Console.WriteLine($'Generating array by filling {nElems}:');
	var iNumbers : array of integer := new integer[nElems];
	for var i : integer := 0 to nElems - 1 do
  begin
		iNumbers[i] := oRnd.Next(1, 100);
		Console.Write(iNumbers[i] + ' ');
	end;
	var iMin := iNumbers[0];
	var nIndex := 0;
	for var i : Integer := 1 To nElems - 1 do
  begin
		If iNumbers[i] < iMin then
    begin
			iMin := iNumbers[i];
			nIndex := i;
	  end;
	end;
	Console.WriteLine
	(
	  String.Format(#10#13 + 'Found minimum element:{0} with index {1}', 
	  iMin, nIndex)
	);
	Console.Read();
end.